	   MVI A,FF
	   STA 204D
	   LXI H,204F
	   MOV B,M
	   LXI H,2050
	   LDA 204E

LOOP:	   CMP M
	   JNZ SKIP
	   MOV A,C
	   STA 204D
	   HLT

SKIP:	   INX H
	   INR C
	   DCR B
	   JNZ LOOP
	   HLT
