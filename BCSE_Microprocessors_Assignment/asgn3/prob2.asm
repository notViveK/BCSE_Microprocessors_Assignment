	   LXI H,21FF
	   MOV B,M
	   LXI H,2200
	   MVI C,00
	   MVI A,00

LOOP:	   STA 2600
	   MOV A,M
	   ANI 81
	   CPI 81
	   JNZ SKIP1
	   LDA 2600
	   ADD M
	   JNC SKIP
	   INR C
	   JMP SKIP

SKIP1:	   LDA 2600
	   INX H
	   DCR B
	   JNZ LOOP
	   JMP LAST

SKIP:	   INX H
	   DCR B
	   JNZ LOOP

LAST:	   STA 2500
	   MOV A,C
	   STA 2501
	   HLT
