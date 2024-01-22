module adder_tb;
bit carry_in;
bit a;
bit b;
bit carry_out;
bit sum;
adder DUT(
  .carry_i (carry_in  ),
  .a_i     (a         ),
  .b_i     (b         ),
  .carry_o (carry_out ),
  .sum_o   (sum       )
);
initial begin
  a         <= 1'b0;
  b         <= 1'b0;
  carry_in  <= 1'b0;
  #5;
  a         <= 1'b0;
  b         <= 1'b0;
  carry_in  <= 1'b1;
  #5;
  a         <= 1'b0;
  b         <= 1'b1;
  carry_in  <= 1'b0;
  #5;
  a         <= 1'b0;
  b         <= 1'b1;
  carry_in  <= 1'b1;
  #5;
  a         <= 1'b1;
  b         <= 1'b0;
  carry_in  <= 1'b0;
  #5;
  a         <= 1'b1;
  b         <= 1'b0;
  carry_in  <= 1'b1;
  #5;
  a         <= 1'b1;
  b         <= 1'b1;
  carry_in  <= 1'b0;
  #5;
  a         <= 1'b1;
  b         <= 1'b1;
  carry_in  <= 1'b1;
  #5;
end
endmodule