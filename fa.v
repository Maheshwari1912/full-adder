

// Half Adder Module
module half_adder (
    input logic A, B,
    output logic Sum, Carry
);
    assign Sum = A ^ B;
    assign Carry = A & B;
endmodule

// Full Adder Using Two Half Adders
module full_adder (
    input logic A, B, Cin,
    output logic Sum, Cout
);
    logic sum1, carry1, carry2;
    
    // First Half Adder
    half_adder HA1 (.A(A), .B(B), .Sum(sum1), .Carry(carry1));

    // Second Half Adder
    half_adder HA2 (.A(sum1), .B(Cin), .Sum(Sum), .Carry(carry2));

    // Final Carry
    assign Cout = carry1 | carry2;
endmodule


