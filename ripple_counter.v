module ripple_counter(

    input Clock,
    input Reset,
    output [2:0] leds
    );
    
    wire q0, nq0;
    wire q1, nq1;
    wire q2, nq2;
    
 T_flipflop ff0(
    .T(1'b1),
    .Clock(Clock),
    .Reset(Reset),
    .Q(q0),
    .NOTQ(nq0)
    );
   
 T_flipflop ff1(
    .T(1'b1),
    .Clock(q0),
    .Reset(Reset),
    .Q(q1),
    .NOTQ(nq1)
    );
 
  T_flipflop ff2(
    .T(1'b1),
    .Clock(q1),
    .Reset(Reset),
    .Q(q2),
    .NOTQ(nq2)
    );

assign leds = {q2, q1, q0};
    
    
endmodule
