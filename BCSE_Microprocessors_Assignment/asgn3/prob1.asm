	   LXI H,2600
	   XCHG
	   LXI H,2500
	   MOV B,M

LOOP:	   INX H
	   MOV A,M
	   RRC
	   JNC COND2
	   RLC
	   XCHG
	   MOV M,A
	   INX H
	   XCHG
	   JMP SKIP

COND2:	   RLC
	   RLC
	   JNC SKIP
	   RRC
	   XCHG
	   MOV M,A
	   INX H
	   XCHG

SKIP:	   DCR B
	   JNZ LOOP
	   HLT
