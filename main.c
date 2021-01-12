/* в демо плате светодиоды вис€т землей на порту ј, поэтому порт сажаетс€ на землю
 */

#include "D:\ProgramData\CodeBlocks\msc-51\fx2lp\fx2lp_reg.h"

void tim1 (void) __interrupt (3) __using (1);// interrupt T1 overflow




void main(void)
{
    OEA = 0xFD;
    PA0 = 0;// uart linte tx

    while(1);


}



void tim1 (void) __interrupt (3)
{

}




