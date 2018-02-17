/*
 * This file is part of the TREZOR project, https://trezor.io/
 *
 * Copyright (C) 2014 Pavol Rusnak <stick@satoshilabs.com>
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <libopencm3/usb/usbd.h>
#include <libopencm3/usb/hid.h>

#include <string.h>
#include "display.h"
#include "usb.h"
#include "util.h"

///

#include <libopencm3/stm32/gpio.h>
///

#define USB_INTERFACE_INDEX_MAIN 0
#define ENDPOINT_ADDRESS_IN         (0x81)
#define ENDPOINT_ADDRESS_OUT        (0x01)




#define USB_STRINGS \
	X(MANUFACTURER, "XMR_hw_wallet") \
	X(PRODUCT, "Monezor") \
	X(SERIAL_NUMBER, "0101010101") \
	X(INTERFACE_MAIN,  "XMR_HW") 

#define X(name, value) USB_STRING_##name,
enum {
	USB_STRING_LANGID_CODES, // LANGID code array
	USB_STRINGS
};
#undef X

#define X(name, value) value,
static const char *usb_strings[] = {
	USB_STRINGS
};
#undef X


static const struct usb_device_descriptor dev_descr = {
	.bLength = USB_DT_DEVICE_SIZE,
	.bDescriptorType = USB_DT_DEVICE,
	.bcdUSB = 0x0200,
	.bDeviceClass = 0,
	.bDeviceSubClass = 0,
	.bDeviceProtocol = 0,
	.bMaxPacketSize0 = 64,
	.idVendor = 0x1209,
	.idProduct = 0xC0DA,
	.bcdDevice = 0x0100,
	.iManufacturer = USB_STRING_MANUFACTURER,
	.iProduct = USB_STRING_PRODUCT,
	.iSerialNumber = USB_STRING_SERIAL_NUMBER,
	.bNumConfigurations = 1,
};

static const uint8_t hid_report_descriptor[] = {
	0x06, 0x00, 0xff,  // USAGE_PAGE (Vendor Defined)	???vubec nevim co je tohle.
	0x09, 0x01,        // USAGE (1)						0x01 znamena generic desktop
	0xa1, 0x01,        // COLLECTION (Application)
	0x09, 0x20,        // USAGE (Input Report Data)		tyhle data obsahuji input
	0x15, 0x00,        // LOGICAL_MINIMUM (0)			nula
	0x26, 0xff, 0x00,  // LOGICAL_MAXIMUM (255)			az 255
	0x75, 0x08,        // REPORT_SIZE (8)				kazdy paket 8 bitu
	0x95, 0x40,        // REPORT_COUNT (64)				a max 64 paketu
	0x81, 0x02,        // INPUT (Data,Var,Abs)			??input tam bude taky,??
	0x09, 0x21,        // USAGE (Output Report Data)	output report data, takze smer do zarizeni
	0x15, 0x00,        // LOGICAL_MINIMUM (0)			nula
	0x26, 0xff, 0x00,  // LOGICAL_MAXIMUM (255)			az 255, tzn pouziju vsechny bity v paketu
	0x75, 0x08,        // REPORT_SIZE (8)				paket 8 bitu
	0x95, 0x40,        // REPORT_COUNT (64)				a bude jich max 64
	0x91, 0x02,        // OUTPUT (Data,Var,Abs)			nastaveni?
	0xc0               // END_COLLECTION
};

static const struct {
	struct usb_hid_descriptor hid_descriptor;
	struct {
		uint8_t bReportDescriptorType;
		uint16_t wDescriptorLength;
	} __attribute__((packed)) hid_report;
} __attribute__((packed)) hid_function = {
	.hid_descriptor = {
		.bLength = sizeof(hid_function),
		.bDescriptorType = USB_DT_HID,
		.bcdHID = 0x0111,
		.bCountryCode = 0,
		.bNumDescriptors = 1,
	},
	.hid_report = {
		.bReportDescriptorType = USB_DT_REPORT,
		.wDescriptorLength = sizeof(hid_report_descriptor),
	}
};

static const struct usb_endpoint_descriptor hid_endpoints[2] = {{
	.bLength = USB_DT_ENDPOINT_SIZE,
	.bDescriptorType = USB_DT_ENDPOINT,
	.bEndpointAddress = ENDPOINT_ADDRESS_IN,
	.bmAttributes = USB_ENDPOINT_ATTR_INTERRUPT,
	.wMaxPacketSize = 64,
	.bInterval = 1,
}, {
	.bLength = USB_DT_ENDPOINT_SIZE,
	.bDescriptorType = USB_DT_ENDPOINT,
	.bEndpointAddress = ENDPOINT_ADDRESS_OUT,
	.bmAttributes = USB_ENDPOINT_ATTR_INTERRUPT,
	.wMaxPacketSize = 64,
	.bInterval = 1,
}};

static const struct usb_interface_descriptor hid_iface[] = {{
	.bLength = USB_DT_INTERFACE_SIZE,
	.bDescriptorType = USB_DT_INTERFACE,
	.bInterfaceNumber = USB_INTERFACE_INDEX_MAIN,
	.bAlternateSetting = 0,
	.bNumEndpoints = 2,
	.bInterfaceClass = USB_CLASS_HID,
	.bInterfaceSubClass = 0,
	.bInterfaceProtocol = 0,
	.iInterface = USB_STRING_INTERFACE_MAIN,
	.endpoint = hid_endpoints,
	.extra = &hid_function,
	.extralen = sizeof(hid_function),
}};

static const struct usb_interface ifaces[] = {{
	.num_altsetting = 1,
	.altsetting = hid_iface,
}};

static const struct usb_config_descriptor config = {
	.bLength = USB_DT_CONFIGURATION_SIZE,
	.bDescriptorType = USB_DT_CONFIGURATION,
	.wTotalLength = 0,
	.bNumInterfaces = 1,
	.bConfigurationValue = 1,
	.iConfiguration = 0,
	.bmAttributes = 0x80,
	.bMaxPower = 0x32,
	.interface = ifaces,
};

static int hid_control_request(usbd_device *dev, struct usb_setup_data *req, uint8_t **buf, uint16_t *len, usbd_control_complete_callback *complete)
{
	(void)complete;
	(void)dev;

	if ((req->bmRequestType != 0x81) ||
	    (req->bRequest != USB_REQ_GET_DESCRIPTOR) ||
	    (req->wValue != 0x2200))
		return 0;

	/* Handle the HID report descriptor. */
	*buf = (uint8_t *)hid_report_descriptor;
	*len = sizeof(hid_report_descriptor);
	return 1;
}

static void hid_rx_callback(usbd_device *dev, uint8_t ep)
{
	(void)dev;
	(void)ep;
}

static void hid_set_config(usbd_device *dev, uint16_t wValue)
{
	(void)wValue;

	usbd_ep_setup(dev, ENDPOINT_ADDRESS_IN, USB_ENDPOINT_ATTR_INTERRUPT, 64, 0);
	usbd_ep_setup(dev, ENDPOINT_ADDRESS_OUT, USB_ENDPOINT_ATTR_INTERRUPT, 64, hid_rx_callback);

	usbd_register_control_callback(
		dev,
		USB_REQ_TYPE_STANDARD | USB_REQ_TYPE_INTERFACE,
		USB_REQ_TYPE_TYPE | USB_REQ_TYPE_RECIPIENT,
		hid_control_request);
}

static usbd_device *usbd_dev;
static uint8_t usbd_control_buffer[128];

void usbInit(void)
{
	usbd_dev = usbd_init(&otgfs_usb_driver, &dev_descr, &config, usb_strings, 3, usbd_control_buffer, sizeof(usbd_control_buffer));
	usbd_register_set_config_callback(usbd_dev, hid_set_config);
}

void usb_poll(void)
{	

	//test string
	uint8_t zprava[] = {10,13,'h', 'e', 'l', 'l', 'o', ' ', ' ', 'M', 'O', 'N', 'E', 'R', 'O', ' ', ' ', 'w', 'o', 'r', 'l', 'd', '!', 10, 13};
	
	// poll read buffer
	usbd_poll(usbd_dev);
	
	if (!gpio_get(GPIOC, GPIO2)) {
		//On button press send data to host
		/*
		 * try while device is connected:
		 * sudo cat /dev/usb/hiddev2
		 * 
		 * */
		usbd_ep_write_packet(usbd_dev, ENDPOINT_ADDRESS_IN, zprava, 23);
		
	}
	
}
