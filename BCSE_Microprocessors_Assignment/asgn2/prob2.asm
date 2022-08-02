	   LXI H,2050
	   MOV B,M
	   LXI H,2051
	   MOV D,M
	   MVI A,00
	   MVI C,00

LOOP:	   ADD D
	   JNC SKIP
	   INR C

SKIP:	   INX H
	   DCR B
	   JNZ LOOP
	   STA 2052
	   XRA A
	   MOV A,C
	   STA 2053
	   HLT
