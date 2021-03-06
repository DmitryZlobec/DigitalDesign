module top
(
    input  [3:0] key_sw,
    output [3:0] led,

    output       buzzer
);

    wire a = ~ key_sw [0];
    wire b = ~ key_sw [1];
    
    wire result = a ^ b;

    assign led [0] = ~ result;
    
    assign led [1] = ~ (~ key_sw [0] ^ ~ key_sw [2]);

    // Exercise 1: Change the code below.
    // Write the same for led [2] - logic operation AND 
	 // Write the same for led [3] - logic operation OR
    
    assign led [2] = ~ (~ key_sw[0] & ~ key_sw[2]);
    assign led [3] = ~ (~ key_sw[0] | ~ key_sw[2]);

    // Exercise 2: Change the code below.
    // Turn on and off buzzer on the board using key.
    // Listen to the click sound.

    assign buzzer = key_sw [0];
    
endmodule