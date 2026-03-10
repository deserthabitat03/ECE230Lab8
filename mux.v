// module mux takes 4 inputs and send it to an output depending on the select bit
module mux(
    // delcare inputs
    input [1:0] select, 
    input [3:0] CEO, 
    input [3:0] YOU, 
    input [3:0] FRED, 
    input [3:0] JILL, 
    input en,
    // declare outputs
    output [3:0] Y
    );
    
    // assign Y based on switch case 
    assign Y = (en ? ((select == 0) ? CEO :
                    (select == 1) ? YOU :
                    (select == 2) ? FRED :
                    (select == 3) ? JILL : 0)
                    : 0);
    
endmodule
