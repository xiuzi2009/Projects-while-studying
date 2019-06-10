module arb(req0,req1,req2,req3,clk,resetl,gnt0,gnt1,gnt2,gnt3);
input req0,req1,req2,req3;
input clk,resetl;
output gnt0,gnt1,gnt2,gnt3;

reg gnt0,gnt1,gnt2,gnt3;
reg [8:0] curst, nxtst;
reg [3:0] cntr;
wire cntr_done;

parameter idlest      = 9'b000000001,
          gnt0st      = 9'b000000010,
		  gnt0donest  = 9'b000000100,
		  gnt1st      = 9'b000001000,
		  gnt1donest  = 9'b000010000,
		  gnt2st      = 9'b000100000,
		  gnt2donest  = 9'b001000000,
		  gnt3st      = 9'b010000000,
		  gnt3donest  = 9'b100000000;

always @(posedge clk)
      if(~resetl)
	     curst <= idlest;
	  else
	     curst <= nxtst;

always @(*)
     begin
	 nxtst = idlest;
	 gnt0 = 1'b0;
	 gnt1 = 1'b0;
	 gnt2 = 1'b0;
	 gnt3 = 1'b0;
	 case(curst)
	 idlest: if(req0)
	            nxtst = gnt0st;
				else if(req1)
				nxtst = gnt1st;
				else if(req2)
				nxtst = gnt2st;
				else if(req3)
				nxtst = gnt3st;
				else
				nxtst = idlest;
				
	 gnt0st:begin
	            gnt0  = 1'b1;
				if(cntr_done)
				nxtst = gnt0donest;
				else
				nxtst =gnt0st;
				end
				
	 gnt0donest: if(req1)
	            nxtst  = gnt1st;
			else if(req2)
			    nxtst  = gnt2st;
			else if(req3)
			    nxtst  = gnt3st;
			else if(req0)
			    nxtst  = gnt0st;
			else 
			    nxtst  = gnt0donest;
	 gnt1st:begin
	            gnt1  = 1'b1;
				if(cntr_done)
				nxtst = gnt1donest;
				else
				nxtst =gnt1st;
				end
				
	 gnt1donest: if(req2)
	            nxtst  = gnt2st;
			else if(req3)
			    nxtst  = gnt3st;
			else if(req0)
			    nxtst  = gnt0st;
			else if(req1)
			    nxtst  = gnt1st;
			else 
			    nxtst  = gnt1donest;
	 gnt2st:begin
	            gnt2  = 1'b1;
				if(cntr_done)
				nxtst = gnt2donest;
				else
				nxtst =gnt2st;
				end
				
	 gnt2donest: if(req3)
	            nxtst  = gnt3st;
			else if(req0)
			    nxtst  = gnt0st;
			else if(req1)
			    nxtst  = gnt1st;
			else if(req2)
			    nxtst  = gnt2st;
			else 
			    nxtst  = gnt2donest;
	 gnt3st:begin
	            gnt3  = 1'b1;
				if(cntr_done)
				nxtst = gnt3donest;
				else
				nxtst =gnt3st;
				end
				
	 gnt3donest: if(req0)
	            nxtst  = gnt0st;
			else if(req1)
			    nxtst  = gnt1st;
			else if(req2)
			    nxtst  = gnt2st;
			else if(req3)
			    nxtst  = gnt3st;
			else 
			    nxtst  = gnt2donest;
	  default: nxtst=idlest;
	  endcase
	  end
	  always @(posedge clk)
	  if(~resetl)
		 cntr <=4'h0;
	  else if(cntr_done)
	     cntr <=4'h0;
	  else if((curst==gnt0st)||(curst==gnt1st)||(curst==gnt2st)||(curst==gnt3st))
	          cntr<=cntr+ 4'b0001;
	  else cntr<= 4'h0;
	  assign cntr_done = (cntr >= 4'b0111);
endmodule
				
	            
				