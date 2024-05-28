`default_nettype none

// LO routing and genration

module mixer_control (
    input  wire          clk,                // expect a 10M clock
    input  wire          rst_n,
    input  wire          ext_lo_en,          // if this is high, then LO signal comes from ui_in[]
    input  wire          ext_lo_n,           // external LO diff negative line
    input  wire          ext_lo_p,           // external LO diff positive line
    input  wire [2:0]    int_lo_settings,    // devides clock signal to generate internal LO
    output wire          lo_n,               // LO negative going to the gilbert cell
    output wire          lo_p                // LO positive going to the gilbert cell
    );

    reg       rst;
    reg       int_lo_n;
    reg       int_lo_p;
    reg [2:0] divider;

    initial begin
        $dumpfile ("mixer_control.vcd");
        $dumpvars (0, mixer_control);
    end

    // If ext_lo_en==1 => external LO in use
    // If ext_lo_en==0 => internal LO in use
    assign lo_n = ext_lo_en ? ext_lo_n : int_lo_n;
    assign lo_p = ext_lo_en ? ext_lo_p : int_lo_p;


    // reset handling
    always @(posedge clk or posedge rst_n) begin
        if(rst_n) begin
            rst     <= 1'b0;
        end
        else begin
            rst     <= 1'b1;
        end
    end

    // int_lo_settings 3'b000 => LO freq is 50.0% of clk frequency
    // int_lo_settings 3'b001 => LO freq is 50.0% of clk frequency
    // int_lo_settings 3'b010 => LO freq is 25.0% of clk frequency
    // int_lo_settings 3'b011 => LO freq is 16.6% of clk frequency
    // int_lo_settings 3'b100 => LO freq is 12.5% of clk frequency
    // int_lo_settings 3'b101 => LO freq is 10.0% of clk frequency
    // int_lo_settings 3'b110 => LO freq is  8.3% of clk frequency
    // int_lo_settings 3'b111 => LO freq is  7.1% of clk frequency

    // internal LO generation
    always @(posedge clk) begin
        if(rst) begin
            int_lo_n    <= 1'b0;
            int_lo_p    <= 1'b1;
        end
        else begin
            if (ext_lo_en == 1'b0) begin
                if(int_lo_settings == 3'b000) begin
                   int_lo_n     <= ~int_lo_n;
                   int_lo_p     <= ~int_lo_p;
                end
                else if(int_lo_settings == 3'b001) begin
                   int_lo_n     <= ~int_lo_n;
                   int_lo_p     <= ~int_lo_p;
                end
                else begin
                    if (divider == (int_lo_settings - 1)) begin
                        int_lo_n     <= ~int_lo_n;
                        int_lo_p     <= ~int_lo_p;
                    end
                end
            end
            else begin
                int_lo_n    <= 1'b0;
                int_lo_p    <= 1'b1;
            end
        end
    end

    // Internal LO frequency divider
    always @(posedge clk) begin
        if(rst) begin
            divider     <= 0;
        end
        else begin
            if (ext_lo_en == 1'b0) begin
                if(int_lo_settings == 3'b000) begin
                   divider     <= 0;
                end
                else if(int_lo_settings == 3'b001) begin
                    divider    <= 0;
                end
                else begin
                    if (divider < int_lo_settings) begin
                        divider     <= divider + 1;
                    end
                    else begin
                        divider     <= 0;
                    end
                end
            end
            else begin
                divider     <= 0;
            end
        end
    end

endmodule
