#include "D:\ProgramData\CodeBlocks\msc-51\fx2lp\fx2lp_reg.h"

#define VID 0x3112
#define PID 0x1973
#define DID 0x0001

extern __bit flagStallEP0;
extern __bit flagGetDesc;


__code unsigned char descr[18] = {18, 1, 1, 1, 0xff, 0xff, 0xff, 64,
        (VID & 0xff), ((VID >> 8) & 0xff), (PID & 0xff), ((PID >> 8) & 0xff), (DID & 0xff), ((DID >> 8) & 0xff),
        1, 2, 3, 1};

__xdata unsigned char temp;
__code unsigned char *pPtr = descr;

__xdata unsigned char *pTemp;
unsigned char temp2 = (unsigned char) pTemp & 0xff;
//temp = (unsigned long) pPtr & 0xff; этот участок выдает ошибку
//


