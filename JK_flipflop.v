module JK_flipflop(
    input J, K, Clock, Reset, 
    output Q,
    output NOTQ
    );
    
    wire data;
    assign data = (J & ~Q) | (~K & Q);
    
    D_flipflop D_flipflop_inst( 
        .D(data),
        .Clock(Clock),
        .Q(Q),
        .NOTQ(NOTQ),
        .Reset(Reset)
        );
        
      
    
endmodule
