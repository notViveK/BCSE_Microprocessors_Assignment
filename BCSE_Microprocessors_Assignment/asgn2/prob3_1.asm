LXI H,204F
	   MOV B,M	// move the value N to B register
	   LXI H,2050
	   MOV A,M	// move the first value to A
	   DCR B

LOOP:	   INX H
	   CMP M
	   JNC SKIP
	   MOV A,M

SKIP:	   DCR B
	   JNZ LOOP
	   STA 2060
	   HLT
