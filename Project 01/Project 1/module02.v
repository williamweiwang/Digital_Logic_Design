module homework(A, B, C, D, E, F);  //module

	input	A, B, C, D, E;
	output	F;
	wire	J, K, M;

	nand #(0) nand1(J, A, B);
	nand #(0) nand2(K, C, D);
	not #(0) not1(M, E);
	and #(0) and1(F, J, K, M);

endmodule

module main; //test


wire F;

reg A, B, C, D, E;

homework M1(A, B, C, D, E, F);

initial begin

A=1'b0; B=1'b0; C=1'b0; D=1'b0; E=1'b0;

#100 A=1'b0; B=1'b0; C=1'b0; D=1'b0;
 E=1'b1;
#100 A=1'b0; B=1'b0; C=1'b0; D=1'b1; E=1'b0;
#100 A=1'b0; B=1'b0; C=1'b0; D=1'b1; E=1'b1;
#100 A=1'b0; B=1'b0; C=1'b1; D=1'b0;
 E=1'b0;
#100 A=1'b0; B=1'b0; C=1'b1; D=1'b0;
 E=1'b1;
#100 A=1'b0; B=1'b0; C=1'b1; D=1'b1;
 E=1'b0;
#100 A=1'b0; B=1'b0; C=1'b1; D=1'b1;
 E=1'b1;
#100 A=1'b0; B=1'b1; C=1'b0; D=1'b0;
 E=1'b0;
#100 A=1'b0; B=1'b1; C=1'b0; D=1'b0;
 E=1'b1;
#100 A=1'b0; B=1'b1; C=1'b0; D=1'b1;
 E=1'b0;
#100 A=1'b0; B=1'b1; C=1'b0; D=1'b1;
 E=1'b1;
#100 A=1'b0; B=1'b1; C=1'b1; D=1'b0;
 E=1'b0;
#100 A=1'b0; B=1'b1; C=1'b1; D=1'b0;
 E=1'b1;
#100 A=1'b0; B=1'b1; C=1'b1; D=1'b1;
 E=1'b0;
#100 A=1'b0; B=1'b1; C=1'b1; D=1'b1;
 E=1'b1;
#100 A=1'b1; B=1'b0; C=1'b0; D=1'b0;
 E=1'b0;
#100 A=1'b1; B=1'b0; C=1'b0; D=1'b0;
 E=1'b1;
#100 A=1'b1; B=1'b0; C=1'b0; D=1'b1;
 E=1'b0;
#100 A=1'b1; B=1'b0; C=1'b0; D=1'b1;
 E=1'b1;
#100 A=1'b1; B=1'b0; C=1'b1; D=1'b0;
 E=1'b0;
#100 A=1'b1; B=1'b0; C=1'b1; D=1'b0;
 E=1'b1;
#100 A=1'b1; B=1'b0; C=1'b1; D=1'b1;
 E=1'b0;
#100 A=1'b1; B=1'b0; C=1'b1; D=1'b1;
 E=1'b1;
#100 A=1'b1; B=1'b1; C=1'b0; D=1'b0;
 E=1'b0;
#100 A=1'b1; B=1'b1; C=1'b0; D=1'b0;
 E=1'b1;
#100 A=1'b1; B=1'b1; C=1'b0; D=1'b1;
 E=1'b0;
#100 A=1'b1; B=1'b1; C=1'b0; D=1'b1;
 E=1'b1;
#100 A=1'b1; B=1'b1; C=1'b1; D=1'b0;
 E=1'b0;
#100 A=1'b1; B=1'b1; C=1'b1; D=1'b0;
 E=1'b1;
#100 A=1'b1; B=1'b1; C=1'b1; D=1'b1;
 E=1'b0;
#100 A=1'b1; B=1'b1; C=1'b1; D=1'b1;
 E=1'b1;

end

initial #3200 $finish;

initial $dumpvars;


endmodule