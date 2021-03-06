// Basys Board and Spartan-3E Starter Boards
// Push Button Debounce pbdebounce.v
// c 2010 Embedded Design using Programmable Gate Arrays
//        Second Edition   Dennis Silage

module pbdebounce(input clk, input button, output reg pbreg); 

reg [3:0] pbshift;
	
always@(posedge clk)
	begin
		pbshift=pbshift<<1;
		pbshift[0]=button;
	if (pbshift==0)
		pbreg=0;
	if (pbshift==15)
		pbreg=1;			
	end

endmodule

