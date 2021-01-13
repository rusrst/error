/* в демо плате светодиоды вис€т землей на порту ј, поэтому порт сажаетс€ на землю
 */

#include "D:\ProgramData\CodeBlocks\msc-51\fx2lp\fx2lp_reg.h"

void int0 (void) __interrupt (0);// interrupt int0#
void tim0 (void) __interrupt (1);// interrupt T0 overflow
void int1 (void) __interrupt (2);// interrupt int1#
void tim1 (void) __interrupt (3);// interrupt T1 overflow
void usart0 (void) __interrupt (4);// interrupt usart0
void tim2 (void) __interrupt (5);// interrupt T2 overflow
void res (void) __interrupt (6);// interrupt resume
void usart1 (void) __interrupt (7);// interrupt usart1
void usb (void) __interrupt (8);// interrupt usb
void i2c (void) __interrupt (9);// interrupt i2c
void int4 (void) __interrupt (10);// interrupt int4
void int5 (void) __interrupt (11);// interrupt int5
void int6 (void) __interrupt (12);// interrupt int6



void main(void)
{
    OEA = 0xFE;
    PA1 = 0;// uart linte tx

    EX0 = 1;
    IT0 = 1; // edge, see 195 str



    EA = 1;

    while(1);


}


void int0 (void) __interrupt (0) {
EA = 0;
PA1 = 1;
}
void tim0 (void) __interrupt (1) {}
void int1 (void) __interrupt (2) {}
void tim1 (void) __interrupt (3) {}
void usart0 (void) __interrupt (4) {}
void tim2 (void) __interrupt (5) {}
void res (void) __interrupt (6) {}
void usart1 (void) __interrupt (7) {}
void usb (void) __interrupt (8) {}
void i2c (void) __interrupt (9) {}
void int4 (void) __interrupt (10) {}
void int5 (void) __interrupt (11) {}
void int6 (void) __interrupt (12) {}

