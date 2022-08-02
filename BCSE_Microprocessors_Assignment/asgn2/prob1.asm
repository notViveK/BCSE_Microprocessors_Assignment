	   LXI H,2050
	   MOV A,M
	   LXI H,2051
	   MOV B,M
// evaluation for the first number begins
	   ANI 0F
	   RLC
	   RLC
	   RLC
	   RLC
	   MOV D,A
	   MOV A,B
	   ANI F0
	   RLC
	   RLC
	   RLC
	   RLC
	   ADD D
	   STA 2052
	   LDA 2050
	   RLC
	   RLC
	   RLC
	   RLC
	   ANI 0F
	   MOV D,A
	   MOV A,B
	   RLC
	   RLC
	   RLC
	   RLC
	   ANI F0
	   ADD D
	   STA 2053
	   HLT
