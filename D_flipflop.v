module D_flipflop(
    input D, Clock, Reset,
    output reg Q,
    output NOTQ
    );
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge Clock) begin
        if (Reset) Q <= 0;
        else Q <= D;
     end
        assign NOTQ = ~Q; 
endmodule
