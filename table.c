#include "D:\ProgramData\CodeBlocks\msc-51\fx2lp\fx2lp_reg.h"






#pragma codeseg TABLE
// ��������� �� ������ �����
unsigned char nup = 0;

__code unsigned char descr[18] = { 18, 1, 1, 1, 0xff, 0xff, 0xff, 64,
        (VID & 0xff), ((VID >> 8) & 0xff), (PID & 0xff), ((PID >> 8) & 0xff), (DID & 0xff), ((DID >> 8) & 0xff),
        1, 2, 0, 1};
__code unsigned char configuration0[] = {9, 2, 32, 0, 1, 1, 0, 0x80, 0x30,// configuration ����������
                                         9, 4, 0, 0, 2, 0xff, 0xff, 0xff, 0,// if0 ����������
                                         7, 5, 1, 2, 64, 0, 0,// ep1out ����������
                                         7, 5, 0x81, 2, 64, 0, 0 // ep1in ����������
                                        };
__code unsigned char string0[] = { 4, 3, 9, 4};

__code unsigned char string1[] = { 12, 3, 'M', 0, 'A', 0, 'X', 0, 'I', 0, 'M', 0};
__code unsigned char string2[] = { 16, 3,'F', 0, 'I', 0, 'L', 0, 'A', 0, 'T', 0, 'O', 0, 'V', 0};
