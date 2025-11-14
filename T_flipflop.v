module T_flipflop(
    input T, Clock, Reset,
    output Q, 
    output NOTQ
    );
    
    JK_flipflop JK_flipflop_inst(
        .J(T),
        .K(T),
        .Clock(Clock),
        .Q(Q),
        .NOTQ(NOTQ),
        .Reset(Reset)
        );
        
endmodule
