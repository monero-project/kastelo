// https://nevcx.wordpress.com/2013/08/18/programming-an-attiny13a-using-arduinoisp/

#include "main.h"

byte aniframe;
byte animidxnum = 0;
const byte animidxmax = 8;
unsigned long prevmillisec = 0;
unsigned long currmillisec = 0;
const long delayfade1 = 1500;
const long delayfade2 = 2500;
const int repeatfade2 = 16000;

const byte lengthfade1 = 19;
const byte cylonscan[lengthfade1] PROGMEM = {
  0x80, 0xC0, 0x60, 0x30, 0x18, 0x0C, 0x06, 0x03, 0x01, 0x00,
  0x01, 0x03, 0x06, 0x0C, 0x18, 0x30, 0x60, 0xC0, 0x80
};

const byte lengthfade2 = 7;
const byte alienscan1[lengthfade2] PROGMEM = {
  0x81, 0x42, 0x24, 0x18, 0x24, 0x42, 0x81
};

const byte lengthfade3 = 9;
const byte alienscan2[lengthfade3] PROGMEM = {
  0x81, 0x42, 0x24, 0x18, 0x18, 0x3C, 0x7E, 0xFF, 0xFF
};

const byte lengthfade4 = 15;
const byte bossflash[lengthfade4] PROGMEM = {
  0xF0, 0x00, 0xF0, 0x00, 0xF0, 0x00, 0xF0, 0x00,
  0x0F, 0x00, 0x0F, 0x00, 0x0F, 0x00, 0x0F
};

const byte lengthfade5 = 2;
const byte allflash[lengthfade5] PROGMEM = {
  0b11111111, 0x00
};

const byte leftflash[lengthfade5] PROGMEM = {
  0b11110000, 0x00
  //0b00110011
  //looks like
  //0b11110000
};

const byte rightflash[lengthfade5] PROGMEM = {
  0b00001111, 0x00
  //0b11001100
  //looks like
  //0b00001111
};

byte binctr = 0;

void setup() {
  // Voodoo AVR registers
  ADCSRA &= ~(1 << ADEN);
  PORTB |= (1 << PB4);
  DDRB &= ~(1 << PB4);
}

// Sample SPST on GPIO PB4 at end of each animation loop
void chkbutstate() {
  if (!(PINB & (1 << PB4))) {
    aniframe = 0;
    animidxnum++;

    if (animidxnum > animidxmax) {
      animidxnum = 0;  // Reset to first anim
    }

    {
      blinkled();  // Serves as user feedback
      blinkled();  // to indicate that an anim
      blinkled();  // has iterated via SPST
    }

    prevmillisec = currmillisec;  // Reset timer
  }
}

// Arduino compatible loop block
void loop() {
  currmillisec = millis();  // Set timer
  chkbutstate();            // Sample SPST

  switch (animidxnum) {
    case 0:
      animate(
        delayfade2,
        lengthfade1,
        repeatfade2,
        cylonscan
      );
      break;

    case 1:
      animate(
        0,
        lengthfade1,
        repeatfade2/2,
        cylonscan
      );
      break;

    case 2:
      animate(
        delayfade1,
        lengthfade2,
        repeatfade2,
        alienscan1
      );
      break;

    case 3:
      animate(
        1500,
        lengthfade3,
        16000,
        alienscan2
      );
      break;

    case 4:
      animate(
        0,
        lengthfade4,
        8000,
        bossflash
      );
      break;

    case 5:
      animate(
        0,
        lengthfade5,
        16000,
        allflash
      );
      break;

    case 6:
      animate(
        0,
        lengthfade5,
        16000,
        leftflash
      );
      break;

    case 7:
      animate(
        0,
        lengthfade5,
        16000,
        rightflash
      );
      break;

    case 8:
      showframe(16000);
      aniframe++;
      break;

    default:
      alledsoff();
      break;
  }
}

void animate(int anidelay, byte arraylength, int arrayrepeat, const byte* array) {
  if (currmillisec - prevmillisec >= (unsigned long)anidelay) {
    for (byte niter = 0; niter < arraylength; niter++) {
      prevmillisec = currmillisec;
      aniframe = pgm_read_byte_near(array + niter);
      showframe(arrayrepeat);
    }
    alledsoff();
  }
}

void showframe(int framerep) {
  for (int niter = 0; niter < framerep; niter++) {
    alledsoff();
    PORTB |= (0x0F & aniframe);
    DDRB |= (0x0F & aniframe);

    alledsoff();
    DDRB |= (0x0F & (aniframe >> 4));
  }
}

// Completely dim all LEDs in array
void alledsoff() {
  DDRB &= ~(0x0F);
  PORTB &= ~(0x0F);
}

// Illuminate a LED in array
void showprog(byte progidx) {
  if (progidx < 16) {
    alledsoff();
    PORTB |= (0x0F & progidx);
    DDRB |= (0x0F & progidx);
  }
  else {
    alledsoff();
    DDRB |= (0x0F & (progidx >> 4));
  }
}

// Simply blink a certain lamp in LED array according to
// the current animation index, to indicate user feedback
void blinkled() {
  showprog(1 << animidxnum);
  delay(200);
  alledsoff();
  delay(100);
}
