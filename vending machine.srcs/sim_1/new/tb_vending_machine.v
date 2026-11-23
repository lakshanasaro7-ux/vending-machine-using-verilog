`timescale 1ns / 1ps

module tb_vending_machine;

    // Inputs
    reg        clk;
    reg        reset;
    reg        product_select;
    reg [2:0]  money;
    reg        buy;

    // Outputs
    wire       product_a;
    wire       product_b;
    wire       change_available;
    wire       insufficient_money;
    wire [2:0] change;

    // Instantiate the vending machine
    vending_machine uut (
        .clk(clk),
        .reset(reset),
        .product_select(product_select),
        .money(money),
        .buy(buy),
        .product_a(product_a),
        .product_b(product_b),
        .change_available(change_available),
        .insufficient_money(insufficient_money),
        .change(change)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin

        // Initial values
        clk = 0;
        reset = 1;
        product_select = 0;
        money = 3'b000;
        buy = 0;

        // Reset
        #20;
        reset = 0;

        // =========================================
        // TEST 1
        // Product A = ₹10
        // Insert ₹10
        // Expected: Product A
        // =========================================

        $display("TEST 1: Product A with ₹10");

        product_select = 0;
        money = 3'b010;       // ₹10

        #10;
        buy = 1;

        #10;
        buy = 0;

        #30;

        // =========================================
        // TEST 2
        // Product A = ₹10
        // Insert ₹20
        // Expected: Product A + ₹10 change
        // =========================================

        $display("TEST 2: Product A with ₹20");

        product_select = 0;
        money = 3'b100;       // ₹20

        #10;
        buy = 1;

        #10;
        buy = 0;

        #30;

        // =========================================
        // TEST 3
        // Product B = ₹15
        // Insert ₹15
        // Expected: Product B
        // =========================================

        $display("TEST 3: Product B with ₹15");

        product_select = 1;
        money = 3'b011;       // ₹15

        #10;
        buy = 1;

        #10;
        buy = 0;

        #30;

        // =========================================
        // TEST 4
        // Product B = ₹15
        // Insert ₹20
        // Expected: Product B + ₹5 change
        // =========================================

        $display("TEST 4: Product B with ₹20");

        product_select = 1;
        money = 3'b100;       // ₹20

        #10;
        buy = 1;

        #10;
        buy = 0;

        #30;

        // =========================================
        // TEST 5
        // Product A = ₹10
        // Insert ₹5
        // Expected: Insufficient money
        // =========================================

        $display("TEST 5: Insufficient money");

        product_select = 0;
        money = 3'b001;       // ₹5

        #10;
        buy = 1;

        #10;
        buy = 0;

        #30;

        $display("All tests completed.");

        $finish;

    end

endmodule