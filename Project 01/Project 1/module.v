module homework(A, B, C, D, E, F);  

	input	A, B, C, D, E;
	output	F;
	wire	J, K, M;

	nand #(0) nand1(J, A, B);
	nand #(0) nand2(K, C, D);
	not #(0) not(M, E);
	and #(0) and(F, J, K, M);

endmodule