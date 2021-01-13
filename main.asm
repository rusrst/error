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
	.globl _int0
	.globl _tim0
	.globl _int1
	.globl _tim1
	.globl _usart0
	.globl _tim2
	.globl _res
	.globl _usart1
	.globl _usb
	.globl _i2c
	.globl _int4
	.globl _int5
	.globl _int6
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
	ljmp	_int0
	.ds	5
	ljmp	_tim0
	.ds	5
	ljmp	_int1
	.ds	5
	ljmp	_tim1
	.ds	5
	ljmp	_usart0
	.ds	5
	ljmp	_tim2
	.ds	5
	ljmp	_res
	.ds	5
	ljmp	_usart1
	.ds	5
	ljmp	_usb
	.ds	5
	ljmp	_i2c
	.ds	5
	ljmp	_int4
	.ds	5
	ljmp	_int5
	.ds	5
	ljmp	_int6
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
	C$main.c$22$0_0$15 ==.
;	main.c:22: void main(void)
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
	C$main.c$24$1_0$15 ==.
;	main.c:24: OEA = 0xFE;
	mov	_OEA,#0xfe
	C$main.c$25$1_0$15 ==.
;	main.c:25: PA1 = 0;// uart linte tx
;	assignBit
	clr	_PA1
	C$main.c$27$1_0$15 ==.
;	main.c:27: EX0 = 1;
;	assignBit
	setb	_EX0
	C$main.c$28$1_0$15 ==.
;	main.c:28: IT0 = 1; // edge, see 195 str
;	assignBit
	setb	_IT0
	C$main.c$32$1_0$15 ==.
;	main.c:32: EA = 1;
;	assignBit
	setb	_EA
	C$main.c$34$1_0$15 ==.
;	main.c:34: while(1);
00102$:
	sjmp	00102$
	C$main.c$37$1_0$15 ==.
;	main.c:37: }
	C$main.c$37$1_0$15 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int0'
;------------------------------------------------------------
	G$int0$0$0 ==.
	C$main.c$40$1_0$17 ==.
;	main.c:40: void int0 (void) __interrupt (0) {
;	-----------------------------------------
;	 function int0
;	-----------------------------------------
_int0:
	C$main.c$41$1_0$17 ==.
;	main.c:41: EA = 0;
;	assignBit
	clr	_EA
	C$main.c$42$1_0$17 ==.
;	main.c:42: PA1 = 1;
;	assignBit
	setb	_PA1
	C$main.c$43$1_0$17 ==.
;	main.c:43: }
	C$main.c$43$1_0$17 ==.
	XG$int0$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'tim0'
;------------------------------------------------------------
	G$tim0$0$0 ==.
	C$main.c$44$1_0$20 ==.
;	main.c:44: void tim0 (void) __interrupt (1) {}
;	-----------------------------------------
;	 function tim0
;	-----------------------------------------
_tim0:
	C$main.c$44$1_0$20 ==.
	XG$tim0$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int1'
;------------------------------------------------------------
	G$int1$0$0 ==.
	C$main.c$45$1_0$23 ==.
;	main.c:45: void int1 (void) __interrupt (2) {}
;	-----------------------------------------
;	 function int1
;	-----------------------------------------
_int1:
	C$main.c$45$1_0$23 ==.
	XG$int1$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'tim1'
;------------------------------------------------------------
	G$tim1$0$0 ==.
	C$main.c$46$1_0$26 ==.
;	main.c:46: void tim1 (void) __interrupt (3) {}
;	-----------------------------------------
;	 function tim1
;	-----------------------------------------
_tim1:
	C$main.c$46$1_0$26 ==.
	XG$tim1$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'usart0'
;------------------------------------------------------------
	G$usart0$0$0 ==.
	C$main.c$47$1_0$29 ==.
;	main.c:47: void usart0 (void) __interrupt (4) {}
;	-----------------------------------------
;	 function usart0
;	-----------------------------------------
_usart0:
	C$main.c$47$1_0$29 ==.
	XG$usart0$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'tim2'
;------------------------------------------------------------
	G$tim2$0$0 ==.
	C$main.c$48$1_0$32 ==.
;	main.c:48: void tim2 (void) __interrupt (5) {}
;	-----------------------------------------
;	 function tim2
;	-----------------------------------------
_tim2:
	C$main.c$48$1_0$32 ==.
	XG$tim2$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'res'
;------------------------------------------------------------
	G$res$0$0 ==.
	C$main.c$49$1_0$35 ==.
;	main.c:49: void res (void) __interrupt (6) {}
;	-----------------------------------------
;	 function res
;	-----------------------------------------
_res:
	C$main.c$49$1_0$35 ==.
	XG$res$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'usart1'
;------------------------------------------------------------
	G$usart1$0$0 ==.
	C$main.c$50$1_0$38 ==.
;	main.c:50: void usart1 (void) __interrupt (7) {}
;	-----------------------------------------
;	 function usart1
;	-----------------------------------------
_usart1:
	C$main.c$50$1_0$38 ==.
	XG$usart1$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'usb'
;------------------------------------------------------------
	G$usb$0$0 ==.
	C$main.c$51$1_0$41 ==.
;	main.c:51: void usb (void) __interrupt (8) {}
;	-----------------------------------------
;	 function usb
;	-----------------------------------------
_usb:
	C$main.c$51$1_0$41 ==.
	XG$usb$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c'
;------------------------------------------------------------
	G$i2c$0$0 ==.
	C$main.c$52$1_0$44 ==.
;	main.c:52: void i2c (void) __interrupt (9) {}
;	-----------------------------------------
;	 function i2c
;	-----------------------------------------
_i2c:
	C$main.c$52$1_0$44 ==.
	XG$i2c$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int4'
;------------------------------------------------------------
	G$int4$0$0 ==.
	C$main.c$53$1_0$47 ==.
;	main.c:53: void int4 (void) __interrupt (10) {}
;	-----------------------------------------
;	 function int4
;	-----------------------------------------
_int4:
	C$main.c$53$1_0$47 ==.
	XG$int4$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int5'
;------------------------------------------------------------
	G$int5$0$0 ==.
	C$main.c$54$1_0$50 ==.
;	main.c:54: void int5 (void) __interrupt (11) {}
;	-----------------------------------------
;	 function int5
;	-----------------------------------------
_int5:
	C$main.c$54$1_0$50 ==.
	XG$int5$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int6'
;------------------------------------------------------------
	G$int6$0$0 ==.
	C$main.c$55$1_0$53 ==.
;	main.c:55: void int6 (void) __interrupt (12) {}
;	-----------------------------------------
;	 function int6
;	-----------------------------------------
_int6:
	C$main.c$55$1_0$53 ==.
	XG$int6$0$0 ==.
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
