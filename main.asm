;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.3 #11868 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _ES1
	.globl _EA
	.globl _PA1
	.globl _PA0
	.globl _ACC
	.globl _PSW
	.globl _IE
	.globl _TH1
	.globl _TL1
	.globl _TH0
	.globl _TL0
	.globl _TCON
	.globl _CKCON
	.globl _TMOD
	.globl _IOA
	.globl _OEA
	.globl _MPAGE
	.globl __XPAGE
	.globl _xdata_start
	.globl _CPUCS
	.globl _tim1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$_XPAGE$0_0$0 == 0x0092
__XPAGE	=	0x0092
G$MPAGE$0_0$0 == 0x0092
_MPAGE	=	0x0092
G$OEA$0_0$0 == 0x00b2
_OEA	=	0x00b2
G$IOA$0_0$0 == 0x0080
_IOA	=	0x0080
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$CKCON$0_0$0 == 0x008e
_CKCON	=	0x008e
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$PA0$0_0$0 == 0x0080
_PA0	=	0x0080
G$PA1$0_0$0 == 0x0081
_PA1	=	0x0081
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$ES1$0_0$0 == 0x00ae
_ES1	=	0x00ae
G$ET2$0_0$0 == 0x00ad
_ET2	=	0x00ad
G$ES0$0_0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$CPUCS$0_0$0 == 0xe600
_CPUCS	=	0xe600
G$xdata_start$0_0$0 == 0xe000
_xdata_start	=	0xe000
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_tim1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$11$0_0$3 ==.
;	main.c:11: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$main.c$13$1_0$3 ==.
;	main.c:13: OEA = 0xFD;
	mov	_OEA,#0xfd
	C$main.c$14$1_0$3 ==.
;	main.c:14: PA0 = 0;// uart linte tx
;	assignBit
	clr	_PA0
	C$main.c$16$1_0$3 ==.
;	main.c:16: while(1);
00102$:
	sjmp	00102$
	C$main.c$19$1_0$3 ==.
;	main.c:19: }
	C$main.c$19$1_0$3 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tim1'
;------------------------------------------------------------
	G$tim1$0$0 ==.
	C$main.c$23$1_0$6 ==.
;	main.c:23: void tim1 (void) __interrupt (3)
;	-----------------------------------------
;	 function tim1
;	-----------------------------------------
_tim1:
	C$main.c$26$1_0$6 ==.
;	main.c:26: }
	C$main.c$26$1_0$6 ==.
	XG$tim1$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
