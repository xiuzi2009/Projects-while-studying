module ANN_fullyear_tb();
parameter CALCULATION=2'b00, INPUT_SIZE=13,INPUT_NUM=4,NEURON_NUM=8,ONE_YEAR=365+4;

reg [INPUT_SIZE*12-1:0] Data_in, Weight_in,Target,New_weight_out;
reg Reset_l,Clk,training_enable_h,tb_rev_ready_h,Err,Ready_signal;
reg Weight_Save_enable,Weight_Load_enable;
reg [INPUT_SIZE*12-1:0]Temperature_in[3:0];
reg [INPUT_SIZE*12-1:0] Weight_layer[INPUT_NUM*NEURON_NUM+NEURON_NUM-1:0]; //4*8=32 +8=40 weights
reg [INPUT_SIZE*12-1:0] New_weight;
reg [INPUT_SIZE*12-1:0] Temperature_mem[ONE_YEAR-1:0];
reg [INPUT_SIZE*12-1:0] Temperature_output,Data_out;
integer i,j,k,m;
integer temp_file,weight_file,weight_file_new,prediction;
integer status_temp_file,status_weight_file,status_weight_file_new,status_prediction;

wire [INPUT_SIZE*12-1:0] Data_out_w;
wire [INPUT_SIZE*12-1:0]New_weight_out_w;
wire Ready_signal_w;

ANN ANN_full_year_test(.Temperature_in_0(Temperature_in[0]),
			.Temperature_in_1(Temperature_in[1]),
			.Temperature_in_2(Temperature_in[2]),
			.Temperature_in_3(Temperature_in[3]),     //input temperature
			.Weight_in(Weight_in),                    //weight input bus
			.Target(Target),                          //target input
			.Reset_l(Reset_l),
			.Clk(Clk),
			.training_enable_h(training_enable_h),    //1: training module, compare output and result,then update weights. 0: only output result
			.tb_rev_ready_h(tb_rev_ready_h),          //semaphores for inputing data over 
			.Weight_Save_enable(Weight_Save_enable),  //handler for writing weights to ANN
			.Weight_Load_enable( Weight_Load_enable), //handler for reading weights to ANN
			.Data_out(Data_out_w),                    //the port for recieve temperature data
			.New_weight_out(New_weight_out_w),		  //the port for recieve weight data
			.Ready_Signal(Ready_signal_w)            //semaphores for output data over
			);							  //when recieved unexpected input, it turn to 1
always@(Ready_signal_w)
begin
Ready_signal=Ready_signal_w;
end
always 
     #1  Clk =  ! Clk; 

initial
begin
	temp_file  = $fopen("Tmax2018.txt","r");

	Reset_l<=0;   //reset the ANN
	#10;
	for(i=0;i<ONE_YEAR;i=i+1)
		begin
		status_temp_file=$fscanf(temp_file,"%h\n",Temperature_mem[i]);
		end
	$fclose(temp_file);
	#2;
	Data_in<=0; Weight_in<=0;Target<=0;New_weight_out<=0;
	Clk<=0;training_enable_h<=0;tb_rev_ready_h<=0;Err<=0;Ready_signal<=0;
	Weight_Save_enable<=0;Weight_Load_enable=0;
	#20;
	Reset_l<=1;
			///initial end
			///Reading data
			////upload data finished, start to prediting
	prediction = $fopen("Prediction.txt","w");	
	for(i=0;i<(ONE_YEAR-4);i=i+1)
		begin
		weight_file = $fopen($sformatf("Weights_TMAX_%0d.txt", i),"r");
		for(m=0;m<(INPUT_NUM*NEURON_NUM+NEURON_NUM);m=m+1)
			begin
			status_weight_file=$fscanf(weight_file,"%h\n",Weight_layer[m]);
			end	
		$fclose(weight_file);
		#10;

		for(k=0;k<(INPUT_NUM*NEURON_NUM+NEURON_NUM);k=k+1)                         ////upload Weights
			begin
			Weight_in=Weight_layer[k];
			Weight_Save_enable=1;
			#2;
			end
		Weight_Save_enable=0;
		#20;
		///next stage is calculating
		Temperature_in[0]<=Temperature_mem[i];
		Temperature_in[1]<=Temperature_mem[i+1];
		Temperature_in[2]<=Temperature_mem[i+2];
		Temperature_in[3]<=Temperature_mem[i+3];	
		tb_rev_ready_h=1;
		#10;
		tb_rev_ready_h=0;
		Temperature_output=Data_out_w;
		$display("       Got %d th Temperature out %h",i,Temperature_output[25:0]/1000);
		$fwrite(prediction,"%h\n",Temperature_output[25:0]/1000);
		Target=Temperature_mem[i+4];//then training
		#20; //added for test
		training_enable_h=1;
		#2;
		training_enable_h=0;
		//update weights
		weight_file_new = $fopen($sformatf("Weights_TMAX_%0d.txt", i),"w+");			   //load files
		#10;
		Weight_Load_enable=1;
		#2;
		for(j=0;j<(INPUT_NUM*NEURON_NUM+NEURON_NUM);j=j+1)                         ////Weights
			begin
			Weight_layer[j]=New_weight_out_w;
			$fwrite(weight_file_new,"%h\n",Weight_layer[j]);
			$display("       Got the %d th New Weight out %h",j,Weight_layer[j]);	
			#2;
			end
		$fclose(weight_file_new);
		Weight_Load_enable=0;
		end						//finally, output trained weights
	$fclose(prediction);	
	
	
	
	$stop;
end 

endmodule

