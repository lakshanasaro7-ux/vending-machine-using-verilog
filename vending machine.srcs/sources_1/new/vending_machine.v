module vending_machine (
    input  wire       clk,
    input  wire       reset,
    input  wire [2:0] money,
    input  wire       product_select,
    input  wire       buy,

    output reg        product_a,
    output reg        product_b,
    output reg        change_available,
    output reg        insufficient_money,
    output reg [2:0]  change
);

    // Product prices
    // Product A = ₹10
    // Product B = ₹15

    reg [2:0] money_value;

    always @(*) begin
        case (money)
            3'b000: money_value = 3'd0;
            3'b001: money_value = 3'd5;
            3'b010: money_value = 3'd10;
            3'b011: money_value = 3'd15;
            3'b100: money_value = 3'd20;
            default: money_value = 3'd0;
        endcase
    end

    always @(posedge clk or posedge reset) begin

        if (reset) begin

            product_a         <= 1'b0;
            product_b         <= 1'b0;
            change_available  <= 1'b0;
            insufficient_money <= 1'b0;
            change             <= 3'b000;

        end

        else if (buy) begin

            // Clear previous result
            product_a          <= 1'b0;
            product_b          <= 1'b0;
            change_available   <= 1'b0;
            insufficient_money <= 1'b0;
            change              <= 3'b000;

            // Product A
            if (product_select == 1'b0) begin

                if (money_value >= 10) begin
                    product_a <= 1'b1;

                    if (money_value > 10) begin
                        change_available <= 1'b1;
                        change <= money_value - 10;
                    end
                end

                else begin
                    insufficient_money <= 1'b1;
                end

            end

            // Product B
            else begin

                if (money_value >= 15) begin
                    product_b <= 1'b1;

                    if (money_value > 15) begin
                        change_available <= 1'b1;
                        change <= money_value - 15;
                    end
                end

                else begin
                    insufficient_money <= 1'b1;
                end

            end

        end

    end

endmodule