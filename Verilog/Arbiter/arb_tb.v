//Homework #6 Testbench for module arb
//Jingtian Li   01696987
module Arbiter_tb()
;
reg Req0, Req1,Req2,Req3,Clk,Resetl;
wire Gnt0, Gnt1, Gnt2,Gnt3;
reg random_num[3:0];
integer rand_seed;
arb Aribiter_test(Req0,Req1,Req2,Req3,Clk,Resetl,Gnt0, Gnt1, Gnt2,Gnt3);
 always 
     #1  Clk =  ! Clk; 

 always@(Req0==1&&Gnt0==1)
 #1 Req0<=0;
  always@(Req1==1&&Gnt1==1)
 #1 Req1<=0;
 always@(Req2==1&&Gnt2==1)
 #1 Req2<=0;
  always@(Req3==1&&Gnt3==1)
 #1 Req3<=0;
 
 
   initial
     begin
	Req0=0;
	Req1=0;
	Req2=0;
	Req3=0;
	Resetl=0;
    Clk=1;
	rand_seed=5;
	#100
	Resetl=1;
	end
	
always
begin
   random_num[0]={$random(rand_seed)}%2;
   if(random_num[0]==1) 
   Req0<=1;
   else if(Gnt0!=0)
   Req0<=0;
   #10;
end
always
begin
   random_num[1]={$random(rand_seed)}%2;
   if(random_num[1]==1) 
   Req1<=1;
   else if(Gnt1!=0)
   Req1<=0;
   #10;
end
always
begin
   random_num[2]={$random(rand_seed)}%2;
   if(random_num[2]==1) 
    Req2<=1;
   else if(Gnt2!=0)
   Req2<=0;
   #10;
end
always
begin
   random_num[3]={$random(rand_seed)}%2;
   if(random_num[3]==1) 
    Req3<=1;
   else if(Gnt3!=0)
   Req3<=0;
   #10;
end
endmodule