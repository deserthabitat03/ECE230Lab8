// module takes in 4 bits and outputs those bits to designated outputs depending on the switch and enabler

module demux(
    //declare inputs
    input [3:0] In, 
    input [1:0] sel,
    input en,
    //declare outputs
    output [3:0] local_lib, 
    output [3:0] fire_dept,
    output [3:0] school, 
    output[3:0] shack
    );
    
    //switch case for businesses
    assign local_lib = (en ? ((sel == 2'b00) ? In : 4'b0000) : 4'b0000);
    assign fire_dept = (en ? ((sel == 2'b01) ? In : 4'b0000) : 4'b0000);
    assign school    = (en ? ((sel == 2'b10) ? In : 4'b0000) : 4'b0000);
    assign shack     = (en ? ((sel == 2'b11) ? In : 4'b0000) : 4'b0000);
    
endmodule
