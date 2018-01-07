

#ifndef __SETUP_H__
#define __SETUP_H__

#include <stdint.h>

#include "util.h"

extern uint32_t __stack_chk_guard;

void setup(void);
void setupApp(void);

#endif
