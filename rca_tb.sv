module rca_tb;

bit carry_in;
bit carry_out;
bit [3:0] a_i;
bit [3:0] b_i;
bit [3:0] sum;

rca DUT(
  .a_i      (a_i      ),
  .b_i      (b_i      ),
  .carry_i  (carry_in ),
  .sum_o    (sum      ),
  .carry_o  (carry_out)
);

initial begin
  a_i       = 4'b0000;
  b_i       = 4'b1001;
  carry_in  = 1'b0;
  #5;
  a_i       = 4'b1000;
  b_i       = 4'b1001;
  carry_in  = 1'b1;
  #5;
  a_i       = 4'b0100;
  b_i       = 4'b1101;
  carry_in  = 1'b0;
  #5;
  a_i       = 4'b0100;
  b_i       = 4'b1001;
  carry_in  = 1'b1;
  #5;
  a_i       = 4'b0010;
  b_i       = 4'b1001;
  carry_in  = 1'b1;
  #5;
  a_i       = 4'b0010;
  b_i       = 4'b1001;
  carry_in  = 1'b0;
  #5;
  a_i       = 4'b1100;
  b_i       = 4'b1001;
  carry_in  = 1'b0;
  #5;
  a_i       = 4'b0011;
  b_i       = 4'b1001;
  carry_in  = 1'b0;
  #5;
  a_i       = 4'b0000;
  b_i       = 4'b1001;
  carry_in  = 1'b1;
  #5;
  a_i       = 4'b0010;
  b_i       = 4'b1001;
  carry_in  = 1'b0;
  #5;
end
endmodule