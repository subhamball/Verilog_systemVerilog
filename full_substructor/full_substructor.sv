module full_substructor (
    input a,b,bin,
    output diff,bout
);
assign diff = a^b^bin;
assign bout = ~a&b | b&bin | ~a&bin;
    
endmodule