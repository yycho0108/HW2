// Decoder circuit
`define NOT not #50
`define AND and #50

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);


// Your decoder code here
wire n_a0, n_a1;
`NOT (n_a0, address0);
`NOT (n_a1, address1);

`AND (out0,enable,n_a1,n_a0);
`AND (out1,enable,n_a1,address0);
`AND (out2,enable,address1,n_a0);
`AND (out3,enable,address1,address0);
endmodule

