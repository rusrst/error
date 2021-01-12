

volatile __xdata __at (0xE600) unsigned char CPUCS;
__sfr __at (0x92) _XPAGE;
__sfr __at (0x92) MPAGE;
__sfr __at (0xB2) OEA;// IO
__sfr __at (0x80) IOA;// бит адресуемый регистр IO
__sfr __at (0x89) TMOD;// настройка таймера
__sfr __at (0x8E) CKCON;// контрольскорости тактирования
__sfr __at (0x88) TCON;// timer config bit-adrres
__sfr __at (0x8A) TL0;
__sfr __at (0x8C) TH0;
__sfr __at (0x8B) TL1;
__sfr __at (0x8D) TH1;
__sfr __at (0xA8) IE;// bit adressing
__sfr __at (0xD0) PSW;
__sfr __at (0xE0) ACC;

// IOA sbit
__sbit __at (0x80) PA0;
__sbit __at (0x81) PA1;


//IE SBIT
__sbit __at (0xA8 + 0x07) EA;// global interrupt enable
__sbit __at (0xA8 + 0x06) ES1;// serial
__sbit __at (0xA8 + 0x05) ET2;// T2 overflow
__sbit __at (0xA8 + 0x04) ES0;// serial
__sbit __at (0xA8 + 0x03) ET1;// T1 overflow
__sbit __at (0xA8 + 0x02) EX1;// external int1#
__sbit __at (0xA8 + 0x01) ET0;// T0 overflow
__sbit __at (0xA8 + 0x00) EX0;// int0#



//TCON sbit
__sbit __at (0x88) IT0;
__sbit __at (0x89) IE0;
__sbit __at (0x8A) IT1;
__sbit __at (0x8B) IE1;
__sbit __at (0x8C) TR0;// timer0 run control, 1 - enable run timer0
__sbit __at (0x8D) TF0;// timer0 overflow flag, set to 1 overflow
__sbit __at (0x8E) TR1;
__sbit __at (0x8F) TF1;

#define TMOD7 7
#define TMOD6 6
#define TMOD5 5
#define TMOD4 4
#define TMOD3 3
#define TMOD2 2
#define TMOD1 1
#define TMOD0 0

#define CKCON3 3
#define CKCON4 4
#define CKCON5 5


volatile __xdata __at (0xE000) unsigned char xdata_start;
