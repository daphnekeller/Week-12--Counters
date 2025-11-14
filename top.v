module top(
    input btnC,
    input btnU,
    output [6:0] led
    ); 
    
    wire [2:0] ripple_led;
    wire [2:0] modulo_state;
    wire modulo_out;
    
    
    ripple_counter ripple_inst(
    .Clock(btnC),
    .Reset(btnU),
    .leds(ripple_led)
    );
    
    modulo_divider modulo_inst(
    .Clock(btnC),
    .btnU(btnU),
    .count(modulo_state),
    .final_output(modulo_out)
    );
    
assign led[2:0] = ripple_led; 
assign led[5:3] = modulo_state;
assign led[6] = modulo_out; 

endmodule
