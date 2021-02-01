/*
 */

#include "D:\ProgramData\CodeBlocks\msc-51\fx2lp\fx2lp_reg.h"


extern void int0 (void) __interrupt (0);// interrupt int0#
extern void tim0 (void) __interrupt (1);// interrupt T0 overflow
extern void int1 (void) __interrupt (2);// interrupt int1#
extern void tim1 (void) __interrupt (3);// interrupt T1 overflow
extern void usart0 (void) __interrupt (4);// interrupt usart0
extern void tim2 (void) __interrupt (5);// interrupt T2 overflow
extern void res (void) __interrupt (6);// interrupt resume
extern void usart1 (void) __interrupt (7);// interrupt usart1
extern void usb (void) __interrupt (8);// interrupt usb
extern void i2c (void) __interrupt (9);// interrupt i2c
extern void int4 (void) __interrupt (10);// interrupt int4
extern void int5 (void) __interrupt (11);// interrupt int5
extern void int6 (void) __interrupt (12);// interrupt int6

void sync_delay (void) __naked
{
    __asm
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    __endasm;
}


__code unsigned char *pCode;
unsigned char cntTmp;// ������� ������ ����������
__bit flagStallEP0;
__bit flagGetDesc;
void main(void)
{
    // IO
    OEA = 0xFF; // PA1 input
    PA0 = 1;// UART TX
    //PA1 UART RX
    PA0=1;
    PA1=1;



    USBCS |= (1 << bDISCON);// ���������� �� ����� USB
    for (volatile char i = 0; i < 255; i++)
    {
        for (volatile char j = 0; j < 255; j++)
        {

        }
    }// �������� ����������� ������

    INTSETUP = (1<<bAV2EN);// ���������� ��� ������ USB
    USBIE = (1<<bSUDAV) ;
    EUSB = 1; // ���������� ������ ���������� ��� USB
    USBCS = (1<<bRENUM);// �������� ������ � USB
    EA = 1;// ���������� ����������
    /*setupdat_struct->RequestType = 0x12;
    (*setupdat_struct).IndexL = 0x15; for debug and test */



    // CPU clock
    if (!(CPUCS & 0x08))
        (CPUCS |= 0x08); // ��������� �������, ���� �� 24, �� ������������� 24

    SUDPTRCTL = 0x01; // �������� ������� �������������� �������� ������������



    while (1);

}








