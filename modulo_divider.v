module modulo_divider(

    input Clock,
    input btnU,
    output [2:0] count,
    output final_output
    );
    
   wire q2, q1, q0; 
   wire s2, s1, s0;
   wire c0, c1;
   wire Reset;
   wire countReached;
   wire final_data; 
   
   assign countReached = q2 & (~q1) & q0;
   assign Reset = countReached | btnU;
   assign final_data = countReached ^ final_output;
   
   full_adder fa0(q0, 1'b1, 1'b0, s0, c0);
   full_adder fa1(q1, 1'b0, c0, s1, c1);
   full_adder fa2(q2, 1'b0, c1, s2, c2);
  
   

   D_flipflop ff0(s0, Clock, Reset, q0);
   D_flipflop ff1(s1, Clock, Reset, q1);
   D_flipflop ff2(s2, Clock, Reset, q2);
   
   D_flipflop ff_countReached(final_data, Clock, btnU, final_output); 
   
   assign count = {q2, q1, q0};

 
   
endmodule
