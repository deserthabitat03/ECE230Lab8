//top module

module top (
    //declare inputs
    input [15:0] sw, 
    input btnL, btnU, btnD, btnR, btnC,
    //declare output
    output [15:0] led
    );
    
    // concatenated wires for mux and demux
    wire [1:0] mux_concat;
    wire [1:0] demux_concat;
    
    assign mux_concat = {btnU, btnL};
    assign demux_concat = {btnR, btnD};
    wire [3:0] mux_output;
    
    // mux instance: uses top and left buttons for switch
    mux mux_inst(
    .CEO(sw[3:0]),
    .YOU(sw[7:4]),
    .FRED(sw[11:8]),
    .JILL(sw[15:12]),
    .en(btnC),
    .select(mux_concat),
    .Y(mux_output)
    );
    
    // demux instance: uses bottom and right buttons for switch
    demux demux_inst(
    .In(mux_output),
    .sel(demux_concat),
    .en(btnC),
    .local_lib(led[3:0]),
    .fire_dept(led[7:4]),
    .school(led[11:8]),
    .shack(led[15:12])
    );
    
endmodule