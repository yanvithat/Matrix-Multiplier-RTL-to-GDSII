module matrix_mult3(
  input wire clk, // Clock input
  input wire rst, // Reset input
  input wire input_a_serial, // Serial input for matrix A
  input wire input_b_serial, // Serial input for matrix B
  output wire [31:0] output_c_serial // Serial output for matrix C
);

  reg [3:0] state; // State variable to keep track of received elements
  reg [15:0] input_a [0:15]; // Matrix A input
  reg [15:0] input_b [0:15]; // Matrix B input
  reg [31:0] output_c [0:15]; // Matrix C output

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      // Reset on active high reset signal
      state <= 4'b0000;
      for (int i = 0; i < 16; i = i + 1) begin
        input_a[i] <= 16'b0;
        input_b[i] <= 16'b0;
        output_c[i] <= 32'b0;
      end
    end else begin
      // State machine for receiving serial input
      case (state)
        4'b0000: begin // Receive matrix A elements
          input_a[state] <= input_a_serial;
          state <= state + 1;
        end
        4'b0001, 4'b0010, 4'b0011, 4'b0100, 4'b0101, 4'b0110, 4'b0111,
        4'b1000, 4'b1001, 4'b1010, 4'b1011, 4'b1100, 4'b1101, 4'b1110: begin
          // Receive the rest of matrix A and matrix B elements
          input_a[state - 1] <= input_a_serial;
          input_b[state - 1] <= input_b_serial;
          state <= state + 1;
        end
        4'b1111: begin // Start matrix multiplication when all elements are received
          input_a[state - 1] <= input_a_serial;
          input_b[state - 1] <= input_b_serial;
          state <= 4'b0000;
          
          // Perform matrix multiplication
          for (int i = 0; i < 16; i = i + 1) begin
            for (int j = 0; j < 16; j = j + 1) begin
              output_c[i] <= output_c[i] + input_a[i] * input_b[j];
            end
          end
        end
        default: begin
          // Default case for safety
          state <= 4'b0000;
        end
      endcase
    end
  end

  // Output serial data
  assign output_c_serial = (state == 4'b1111) ? output_c[state - 1] : 32'b0;

endmodule