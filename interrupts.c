#include "D:\ProgramData\CodeBlocks\msc-51\fx2lp\fx2lp_reg.h"








//USB interrupts
void SUDAV (void);
void SOF (void);
void SUTOC (void);
void SUSPEND (void);
void USB_RESET (void);
void HISPEED (void);
void EP0ACK (void);
void _reserved_ (void);
void EP0IN (void);
void EP0OUT (void);
void EP1IN (void);
void EP1OUT (void);
void EP2 (void);
void EP4 (void);
void EP6 (void);
void EP8 (void);
void IBN (void);
void _reserved2_ (void);
void EP0PING (void);
void EP1PING (void);
void EP2PING (void);
void EP4PING (void);
void EP6PING (void);
void EP8PING (void);
void ERRLIMIT (void);
void _reserved3_ (void);
void _reserved4_ (void);
void _reserved5_ (void);
void EP2ISOERR (void);
void EP4ISOERR (void);
void EP6ISOERR (void);
void EP8ISOERR (void);




extern void sync_delay(void);



extern __bit flagStallEP0;
extern __bit flagGetDesc;
__xdata unsigned char *ptr_dat = (__xdata unsigned char *) xdata_temp;// указатель набуфер
__code unsigned char *ptr_descriptor;
extern __code unsigned char configuration0[];
extern __code unsigned char descr[];
extern __code unsigned char string0[];
extern __code unsigned char string1[];
extern __code unsigned char string2[];
extern __code unsigned char *pCode;
void send_byte_uart_9600 (unsigned char byte);





#pragma codeseg USB_INTERRUPTS



volatile void vectors (void) __naked
{
    __asm
    ljmp _SUDAV
    nop

    ljmp _SOF
    nop

    ljmp _SUTOC
    nop
    __endasm;
}


// standart interrupts
void int0 (void) __interrupt (0) {}
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

void get_status (void) {
    return;}
void clear_feature (void) {
    PA0 = 1;
    return;}
void reserve (void)
{
    PA0 = 1;
    flagStallEP0 = 1;
    return;
}
void set_feature (void) {
    PA0 = 1;
    return;}
void set_adr (void) {
    PA0 = 1;
    return;}
void get_descriptor (void)
{


   if (ptr_dat[bmR] != 0x80)// проверка типа запроса, что запрос типа in
   {

    flagStallEP0 = 1;
    return;// выход с ошибкой
   }
   if ((ptr_dat[wVH] != 0x01) && (ptr_dat[wVH] != 0x02) && (ptr_dat[wVH] != 0x03))// проверка на get descriptor
   {
    flagStallEP0 = 1;
    return;// выход с ошибкой
   }
    if (ptr_dat[wVH] == 0x01)// дескриптор device
    {

        if ((ptr_dat[wVL] | ptr_dat[wIL] | ptr_dat[wIH]))// проверка на корректный формат требований
        {
           flagStallEP0 = 1;
            return;// выход с ошибкой
        }
        else
        {
            send_byte_uart_9600(0x5c);

            SUDPTRL = (unsigned char) descr & 0xff;
            SUDPTRH =  (((unsigned short) descr) >> 8);
            flagGetDesc = 1;
            return;
        }
    }
    if (ptr_dat[wVH] == 0x02)// дескриптор configuration
    {
                send_byte_uart_9600(ptr_dat[wVH]);

        if (ptr_dat[wVL] | ptr_dat[wIH] | ptr_dat[wIL])// проверили на равенство 0
        {
            flagStallEP0 = 1;
            return;// выход с ошибкой
        }
        else
        {
            SUDPTRL = (unsigned char) configuration0 & 0xff;
            SUDPTRH =  ((unsigned short) configuration0) >> 8;
            flagGetDesc = 1;
            return;
        }
    }
    if (ptr_dat[wVH] == 0x03)
    {
        if ((!(ptr_dat[wIH])) && (!(ptr_dat[wIL])))
            {
                SUDPTRL = (unsigned char) string0 & 0xff;
                SUDPTRH =  ((unsigned short) string0) >> 8;
                flagGetDesc = 1;
                return;
            }
        if (ptr_dat[wVL] == 0x01)// строка производителя
            {
                SUDPTRL = (unsigned char) string1 & 0xff;
                SUDPTRH =  ((unsigned short) string1) >> 8;
                flagGetDesc = 1;
                return;
            }
        if (ptr_dat[wVL] == 0x02)// строка производителя
            {
                SUDPTRL = (unsigned char) string2 & 0xff;
                SUDPTRH =  ((unsigned short) string2) >> 8;
                flagGetDesc = 1;
                return;
            }
        flagStallEP0 = 1;
        return;// выход с ошибкой
    }
}



void (*std_func[13]) (void) = {get_status, clear_feature, reserve, set_feature, reserve, set_adr, get_descriptor};

void SUDAV (void)
{

    EXIF &= 0xEF;// снимаем прерывание USB
    USBIRQ = (1<<bSUDAV); // снимаем прерывание sudav




    // копируем данные из буфера setup
    __xdata unsigned char *ptr_setupdat = (__xdata unsigned char *)setupdat;
    for (int i = 0; i < setupdat_size; i++)
    {
        ptr_dat[i] = ptr_setupdat[i];
    }







    flagStallEP0 = 0;// очистили флаг ошибки EP0

    if (!(ptr_dat[bmR] & 0x60) && (ptr_dat[bR] < 0x0D))// проверяем что требование стандартное и попадает в диапазон стандартных требований (13)
    {

        std_func[ptr_dat[bR]]();// функция обработки требования

        if (flagStallEP0)
        {
            EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
            __asm__("reti");

        }
        EP0CS |= (1<<HSNAK);


        if (!(ptr_dat[bmR] & 0x80))// если направление OUT
        {
            __asm__("reti");

        }
        if (flagGetDesc)// если надо передать дескриптор с помощью системы автоматической передачи дескрипторов (адреса мы прописали в подпрограмме)
        {
            flagGetDesc = 0;
            __asm__("reti");
        }
        else// это заготовка для передачи данных в ручном режиме
        {
            sync_delay();
            EP0BCH = ptr_dat[wLH];
            sync_delay();
            EP0BCL = ptr_dat[wLL];
            sync_delay();

        }

    }
    else
    {
        flagStallEP0 = 1;
        EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
        __asm__("reti");
    }
    __asm__("reti");
}
void SOF (void) {}
void SUTOC (void) {}
void SUSPEND (void) {}
void USB_RESET (void) {}
void HISPEED (void) {}
void EP0ACK (void) {}
void _reserved_ (void) {}
void EP0IN (void) {}
void EP0OUT (void) {}
void EP1IN (void) {}
void EP1OUT (void) {}
void EP2 (void) {}
void EP4 (void) {}
void EP6 (void) {}
void EP8 (void) {}
void IBN (void) {}
void _reserved2_ (void) {}
void EP0PING (void) {}
void EP1PING (void) {}
void EP2PING (void) {}
void EP4PING (void) {}
void EP6PING (void) {}
void EP8PING (void) {}
void ERRLIMIT (void) {}
void _reserved3_ (void) {}
void _reserved4_ (void) {}
void _reserved5_ (void) {}
void EP2ISOERR (void) {}
void EP4ISOERR (void) {}
void EP6ISOERR (void) {}
void EP8ISOERR (void) {}

void send_byte_uart_9600 (unsigned char byte)
{
        TMOD = (0<<TMOD0 | 1<<TMOD1);// 8bit counter0 with auto-reload T0
        CKCON = (0<<CKCON3);// CLK/12
        TH0 = 0x30;// 48 T0
        TL0 = 0x00;
        PA0 = 0;

        TR0 = 1;// run timer0
        while (!TF0);
        TF0 = 0;
        for (unsigned char i = 0; i < 8; i++)
        {
            PA0 = ((byte >> i) & 0x01);
            while (!TF0);
            TF0 = 0;
        }
        PA0 = 1;
        while (!TF0);
        TF0 = 0;
        while (!TF0);
        TF0 = 0;
        TR0 = 0;
        TH0 = 0;
        TL0 = 0;
        return;

}
