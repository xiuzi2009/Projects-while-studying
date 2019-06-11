//homework 8
//Jingtian Li       01696987

module FIR_1(
input Clk, Reset_L,Coef_Load_Ena,FIR_Filter_Ena,
input [7:0] Coef_Values,X, 
output reg [7:0] Y
);

reg Stage[3:0];
reg [7:0] Coef_saved[4:0];

always@(posedge Clk or negedge Reset_L)
begin
if(Reset_L==0)
	begin
	Y<=0;
	Stage[0]<=0;
	Stage[1]<=0;
	Stage[2]<=0;
	Stage[3]<=0;
	Coef_saved[0]<=0;
	Coef_saved[1]<=0;
	Coef_saved[2]<=0;
	Coef_saved[3]<=0;
	Coef_saved[4]<=0;
	end
	else if(Coef_Load_Ena==1)
			begin
			Coef_saved[0]<=Coef_Values;
			Coef_saved[1]<=Coef_saved[0];
			Coef_saved[2]<=Coef_saved[1];
			Coef_saved[3]<=Coef_saved[2];
			Coef_saved[4]<=Coef_saved[3];
			end
	else if(FIR_Filter_Ena==1)
			begin
			Stage[0]<=X;
			Stage[1]<=Stage[0];
			Stage[2]<=Stage[1];
			Stage[3]<=Stage[2];	
			Y<=X*Coef_saved[0]+Stage[0]*Coef_saved[1]+Stage[1]*Coef_saved[2]+Stage[2]*Coef_saved[3]+Stage[3]*Coef_saved[4];
			end
end
endmodule



