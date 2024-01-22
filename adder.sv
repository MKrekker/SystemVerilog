module adder(
  input   carry_i,
  input   a_i,
  input   b_i,
  output  carry_o,
  output  sum_o
);

logic p;
logic g;
logic and_o;
logic sum;
logic carry;


always_comb begin
  g = a_i & b_i;
  p = a_i ^ b_i;
  sum = p ^ carry_i;
  and_o = p & carry_i;
  carry = g | and_o;
end
assign sum_o = sum;
assign carry_o = carry;
endmodule