	   LXI H,204F
	   MOV B,M
	   DCR B
	   LXI D,2050

LOOP1:	   MOV H,D
	   MOV L,E
	   MOV A,M
	   MOV C,B

LOOP2:	   INX H
	   CMP M
	   JNC SKIP
	   MOV A,M
	   STA 2060
	   XCHG
	   MOV A,M
	   STA 2061
	   LDA 2060
	   MOV M,A
	   XCHG
	   LDA 2061
	   MOV M,A
	   LDA 2060

SKIP:	   DCR C
	   JNZ LOOP2
	   INX D
	   DCR B
	   JNZ LOOP1
                     XRA A;
	   STA 2060
                     STA 2061
	   HLT
