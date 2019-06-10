/*Temperature predictor with FPGA in Verilog
Author: Jingtian Li    Date 3/14/2019
*/

//module ANN: for initalize and package for the ANN
//The value needs 12 bits to store the value, one reserved bits as signed bits, so it's 12+1=13bits
module ANN#(parameter CALCULATION=2'b00, INPUT_SIZE=13,INPUT_NUM=4,NEURON_NUM=8)(
input [INPUT_SIZE*12-1:0]Temperature_in_0,
input [INPUT_SIZE*12-1:0]Temperature_in_1,
input [INPUT_SIZE*12-1:0]Temperature_in_2,
input [INPUT_SIZE*12-1:0]Temperature_in_3,
input [INPUT_SIZE*12-1:0] Weight_in,Target,
input Reset_l,Clk,training_enable_h, tb_rev_ready_h,
input Weight_Save_enable,//semaphore for receive weights
input Weight_Load_enable,//semaphores for send weights
output reg [INPUT_SIZE*12-1:0] Data_out,
output reg [INPUT_SIZE*12-1:0] New_weight_out,
output reg Ready_Signal
);
//initalize memory

reg signed[INPUT_SIZE*12-1:0]Weight_layer1[NEURON_NUM-1:0][INPUT_NUM-1:0];   //4*8=32 12bits registors for saving weights between input and hidden layer
reg signed[INPUT_SIZE*12-1:0]Weight_layer2[NEURON_NUM-1:0];        //8 12bits registors for saving weights between the hidden layer and output       
reg signed[INPUT_SIZE*12-1:0]Neuron_output[NEURON_NUM-1:0];        // Output of all neurons
reg signed [INPUT_SIZE*12-1:0]Data_pre_out,loss;              // output before final result
reg calc_enable_h;
reg Completed_flag;                 //semaphore for told other modules calculation is finished   1:ready 0:not ready
reg Send_Weight_out;                   //semaphore for told other modules Weight process is finished. 1:ready 0:not ready
reg Weight_output_layer_choice;            

integer weight_printer1,weight_printer2,i,j;

integer training_speed;
reg signed [INPUT_SIZE*12-1:0] loss_layer1[NEURON_NUM-1:0];




wire signed [INPUT_SIZE*12-1:0] Neuron_output_w[NEURON_NUM-1:0];


Neuron neuron_0(.Temperature_0(Temperature_in_0),.Temperature_1(Temperature_in_1),.Temperature_2(Temperature_in_2),.Temperature_3(Temperature_in_3), 
                .Weight_in_0(Weight_layer1[0][0]),
				.Weight_in_1(Weight_layer1[0][1]),
				.Weight_in_2(Weight_layer1[0][2]),
				.Weight_in_3(Weight_layer1[0][3]),
				.Reset_l(Reset_l),
				.Clk(Clk),
				.calc_enable_h(calc_enable_h),
				.Neuron_out(Neuron_output_w[0])
				);
Neuron neuron_1(.Temperature_0(Temperature_in_0),.Temperature_1(Temperature_in_1),.Temperature_2(Temperature_in_2),.Temperature_3(Temperature_in_3), 
                .Weight_in_0(Weight_layer1[1][0]),
				.Weight_in_1(Weight_layer1[1][1]),
				.Weight_in_2(Weight_layer1[1][2]),
				.Weight_in_3(Weight_layer1[1][3]),
				.Reset_l(Reset_l),
				.Clk(Clk),
				.calc_enable_h(calc_enable_h),
				.Neuron_out(Neuron_output_w[1])
				);
Neuron neuron_2(.Temperature_0(Temperature_in_0),.Temperature_1(Temperature_in_1),.Temperature_2(Temperature_in_2),.Temperature_3(Temperature_in_3), 
                .Weight_in_0(Weight_layer1[2][0]),
				.Weight_in_1(Weight_layer1[2][1]),
				.Weight_in_2(Weight_layer1[2][2]),
				.Weight_in_3(Weight_layer1[2][3]),
				.Reset_l(Reset_l),
				.Clk(Clk),
				.calc_enable_h(calc_enable_h),
				.Neuron_out(Neuron_output_w[2])
				);
Neuron neuron_3(.Temperature_0(Temperature_in_0),.Temperature_1(Temperature_in_1),.Temperature_2(Temperature_in_2),.Temperature_3(Temperature_in_3), 
                .Weight_in_0(Weight_layer1[3][0]),
				.Weight_in_1(Weight_layer1[3][1]),
				.Weight_in_2(Weight_layer1[3][2]),
				.Weight_in_3(Weight_layer1[3][3]),
				.Reset_l(Reset_l),
				.Clk(Clk),
				.calc_enable_h(calc_enable_h),
				.Neuron_out(Neuron_output_w[3])
				);
Neuron neuron_4(.Temperature_0(Temperature_in_0),.Temperature_1(Temperature_in_1),.Temperature_2(Temperature_in_2),.Temperature_3(Temperature_in_3), 
                .Weight_in_0(Weight_layer1[4][0]),
				.Weight_in_1(Weight_layer1[4][1]),
				.Weight_in_2(Weight_layer1[4][2]),
				.Weight_in_3(Weight_layer1[4][3]),
				.Reset_l(Reset_l),
				.Clk(Clk),
				.calc_enable_h(calc_enable_h),
				.Neuron_out(Neuron_output_w[4])
				);
Neuron neuron_5(.Temperature_0(Temperature_in_0),.Temperature_1(Temperature_in_1),.Temperature_2(Temperature_in_2),.Temperature_3(Temperature_in_3), 
                .Weight_in_0(Weight_layer1[5][0]),
				.Weight_in_1(Weight_layer1[5][1]),
				.Weight_in_2(Weight_layer1[5][2]),
				.Weight_in_3(Weight_layer1[5][3]),
				.Reset_l(Reset_l),
				.Clk(Clk),
				.calc_enable_h(calc_enable_h),
				.Neuron_out(Neuron_output_w[5])
				);
Neuron neuron_6(.Temperature_0(Temperature_in_0),.Temperature_1(Temperature_in_1),.Temperature_2(Temperature_in_2),.Temperature_3(Temperature_in_3), 
                .Weight_in_0(Weight_layer1[6][0]),
				.Weight_in_1(Weight_layer1[6][1]),
				.Weight_in_2(Weight_layer1[6][2]),
				.Weight_in_3(Weight_layer1[6][3]),
				.Reset_l(Reset_l),
				.Clk(Clk),
				.calc_enable_h(calc_enable_h),
				.Neuron_out(Neuron_output_w[6])
				);
Neuron neuron_7(.Temperature_0(Temperature_in_0),.Temperature_1(Temperature_in_1),.Temperature_2(Temperature_in_2),.Temperature_3(Temperature_in_3), 
                .Weight_in_0(Weight_layer1[7][0]),
				.Weight_in_1(Weight_layer1[7][1]),
				.Weight_in_2(Weight_layer1[7][2]),
				.Weight_in_3(Weight_layer1[7][3]),
				.Reset_l(Reset_l),
				.Clk(Clk),
				.calc_enable_h(calc_enable_h),
				.Neuron_out(Neuron_output_w[7])
				);

always @(*)
begin
Neuron_output[0]<=Neuron_output_w[0];
Neuron_output[1]<=Neuron_output_w[1];
Neuron_output[2]<=Neuron_output_w[2];
Neuron_output[3]<=Neuron_output_w[3];
Neuron_output[4]<=Neuron_output_w[4];
Neuron_output[5]<=Neuron_output_w[5];
Neuron_output[6]<=Neuron_output_w[6];
Neuron_output[7]<=Neuron_output_w[7];
end

always @ (posedge Clk or negedge Reset_l)
begin
//  Reset all step
if(Reset_l==0) 
	begin
	weight_printer1<=0;
	weight_printer2<=0;
	calc_enable_h<=0;
	Data_pre_out<=0;
	Send_Weight_out<=0;
	loss<=0;

	 Ready_Signal<=1;
	 Weight_output_layer_choice<=0;
     training_speed<=1;
	  for (j=0; j < INPUT_NUM; j=j+1)
         for (i=0; i < NEURON_NUM; i=i+1)
		 begin
		 Weight_layer1[j][i]<=0;
         Weight_layer2[i]<=0;
		 Neuron_output[i]<=1;
		 Completed_flag<=1;
		 loss_layer1[i]<=0;
         end
	end
	
//if the ANN is finish its work and the simulator apply for input
// data,read and save the data in registor
else if ((Weight_Save_enable==1)&&(Ready_Signal==1))
begin
        if(Weight_output_layer_choice==0)
	       begin
		   Weight_layer1[weight_printer1][weight_printer2] =Weight_in;
		   weight_printer2=weight_printer2+1;
		   if(weight_printer2==INPUT_NUM)begin weight_printer2=0; weight_printer1=weight_printer1+1;end
		   if(weight_printer1==NEURON_NUM)begin weight_printer1=0; Weight_output_layer_choice=1;end
		  
	       end
	   else
		   begin
	       Weight_layer2[weight_printer1]=Weight_in; weight_printer1=weight_printer1+1;
		   if(weight_printer1==NEURON_NUM)begin weight_printer1=0; Weight_output_layer_choice=0;end
		   end
	end

else if((Weight_Load_enable==1)&&(Ready_Signal==1))  //send new weight out
	begin
		if(Weight_output_layer_choice==0)
	       begin
		   New_weight_out=Weight_layer1[weight_printer1][weight_printer2];
		   weight_printer2=weight_printer2+1;
		   if(weight_printer2==INPUT_NUM)begin weight_printer2=0; weight_printer1=weight_printer1+1;end
		   if(weight_printer1==NEURON_NUM)begin weight_printer1=0; Weight_output_layer_choice=1;end
		  
	       end
	   else
		   begin
	       New_weight_out=Weight_layer2[weight_printer1]; weight_printer1=weight_printer1+1;
		   if(weight_printer1==NEURON_NUM)begin weight_printer1=0; Weight_output_layer_choice=0;end
		   end
	end
	
//if the weight and input data are set respectively, and the testbench is ready for recieve the data, start calculate process
else if((tb_rev_ready_h==1)&&(Ready_Signal==1)) 
	begin
    calc_enable_h=1;
	Ready_Signal=0;
	Data_pre_out=0;
	#2;                           //wait for a while
	calc_enable_h=0;              //End calculation process and spread ready signal to all the other modules
	for(i=0;i<NEURON_NUM;i=i+1)            //calculat the final result
	begin
		Data_pre_out=Data_pre_out+Neuron_output[i]*Weight_layer2[i]; //Calculate final result before active function
	end
	Data_out=Data_pre_out;      //final active function.
	#1;
	Ready_Signal=1;
	end
	
else if ((training_enable_h==1)&&(Ready_Signal==1))            // if training_enable, covert data, then compare with target,output result. Then back propergate to update all weights base on the result.
	begin
	Ready_Signal=0;
	loss=$signed(Target)*1000-$signed(Data_out);					//Target needs to amplify 1000 times for calculation		//calculate loss			//loss of Identity function

	 for(weight_printer1=0;weight_printer1<NEURON_NUM;weight_printer1=weight_printer1+1)///  loss of each hidden layer
		begin
		//loss_layer1[i]=Neuron_output[weight_printer1]*(1-Neuron_output[weight_printer1])*loss*Weight_layer2[weight_printer1]; // loss function of sigmoid normal function should be loss=output*(1-output)*(Target-output);
		//changed from above to fit scaled data.
		loss_layer1[weight_printer1]=$signed(Neuron_output[weight_printer1])*(1000-$signed(Neuron_output[weight_printer1]))*$signed(loss)*$signed(Weight_layer2[weight_printer1]); // loss function of sigmoid normal function should be loss=output*(1-output)*(Target-output);
		end
	        
	for(i=0;i<NEURON_NUM;i=i+1)
		begin
		Weight_layer2[i]=$signed(Weight_layer2[i])+$signed(Neuron_output[i])*$signed(loss)/100000/100;///update the weight layer 2
		end
	for(weight_printer1=0;weight_printer1<NEURON_NUM;weight_printer1=weight_printer1+1)   ///update the weight layer 1
		begin
		for(weight_printer2=0;weight_printer2<INPUT_NUM;weight_printer2=weight_printer2+1)
			begin
			case(weight_printer2)
			0:	Weight_layer1[weight_printer1][weight_printer2]=$signed(Weight_layer1[weight_printer1][weight_printer2])+$signed(loss_layer1[weight_printer1])*$signed(Temperature_in_0)/100000/100000/100000;
			1:	Weight_layer1[weight_printer1][weight_printer2]=$signed(Weight_layer1[weight_printer1][weight_printer2])+$signed(loss_layer1[weight_printer1])*$signed(Temperature_in_1)/100000/100000/100000;
			2:	Weight_layer1[weight_printer1][weight_printer2]=$signed(Weight_layer1[weight_printer1][weight_printer2])+$signed(loss_layer1[weight_printer1])*$signed(Temperature_in_2)/100000/100000/100000;
			3:	Weight_layer1[weight_printer1][weight_printer2]=$signed(Weight_layer1[weight_printer1][weight_printer2])+$signed(loss_layer1[weight_printer1])*$signed(Temperature_in_3)/100000/100000/100000;
			default :	Weight_layer1[weight_printer1][weight_printer2]=Weight_layer1[weight_printer1][weight_printer2]+loss_layer1[weight_printer1]*Temperature_in_0;
			endcase
			end
		end
	Ready_Signal=1;
	weight_printer1=0;
	weight_printer2=0;
	end
end


endmodule

//module  Neuron: neurons needs to finish calculations of sum and multiple,and Sigmoid function. The sigmoid function we use f(x)=1/2(x/(1+abs(x))+1) instead.
module Neuron#(parameter CALCULATION=2'b00, INPUT_SIZE=13,INPUT_NUM=4,NEURON_NUM=8)(
input [INPUT_SIZE*12-1:0] Temperature_0,
input [INPUT_SIZE*12-1:0] Temperature_1,
input [INPUT_SIZE*12-1:0] Temperature_2,
input [INPUT_SIZE*12-1:0] Temperature_3,
input [INPUT_SIZE*12-1:0] Weight_in_0,
input [INPUT_SIZE*12-1:0] Weight_in_1,
input [INPUT_SIZE*12-1:0] Weight_in_2,
input [INPUT_SIZE*12-1:0] Weight_in_3,
input Reset_l,Clk,calc_enable_h,
output reg [INPUT_SIZE*12-1:0]Neuron_out
);
reg [INPUT_SIZE*12-1:0] Sum;
real temp;
always @ (posedge calc_enable_h or negedge Reset_l)
begin
	if(Reset_l==0)
		begin
		Sum<=0;
		Neuron_out<=0;
	    temp<=0;
		end
	else if(calc_enable_h==1)
		begin
		Sum=Temperature_0*Weight_in_0+Temperature_1*Weight_in_1+Temperature_2*Weight_in_2+Temperature_3*Weight_in_3;
		Neuron_out=(1000*Sum/(Sum+1000000)+1000)/2;
		end
end
endmodule                                            