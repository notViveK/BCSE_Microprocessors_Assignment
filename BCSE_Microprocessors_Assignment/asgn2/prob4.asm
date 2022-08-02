	   LXI H,204F
	   MOV B,M
	   LXI H,2050
	   MVI C,00
	   LXI D,2200

LOOP:	   MOV A,M
	   RAR
	   JNC SKIP
	   INR C
	   RAL
	   XCHG
	   MOV M,A
	   XCHG
	   INX D

SKIP:	   DCR B
	   INX H
	   JNZ LOOP
	   MOV A,C
	   STA 2301
	   LXI H,204F
	   MOV B,M
	   LXI H,2050
	   MVI C,00
	   LXI D,2100

LOOP1:	   MOV A,M
	   INX H
	   RAR
	   JC SKIP1
	   INR C
	   RAL
	   XCHG
	   MOV M,A
	   XCHG
	   INX D

SKIP1:	   DCR B
	   JNZ LOOP1
	   MOV A,C
	   STA 2300
	   HLT
