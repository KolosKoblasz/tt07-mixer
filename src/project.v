/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_KolosKoblasz_mixer (
    input  wire       VGND,
    input  wire       VPWR,
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    inout  wire [7:0] ua,       // Analog pins, only ua[5:0] can be used
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    //assign uo_out  = 8'h00;
    //assign uio_out = 8'h00;
    //assign uio_oe  = 8'h00;

    wire mc_gm_lo_n;
    wire mc_gm_lo_p;

    mixer_control mixer_control_inst(
        .clk            (clk),
        .rst_n          (rst_n),
        .ext_lo_en      (ui_in[0]),
        .ext_lo_n       (ui_in[1]),
        .ext_lo_p       (ui_in[2]),
        .int_lo_settings(ui_in[5:3]),
        .lo_n           (mc_gm_lo_n),
        .lo_p           (mc_gm_lo_p),
        .VPWR           (VPWR),
        .VGND           (VGND)
    );

    gilbert_mixer gilbert_mixer_inst(
        .out_n  (ua[3]),
        .out_p  (ua[2]),
        .in_n   (ua[0]),
        .in_p   (ua[1]),
        .lo_n   (mc_gm_lo_n),
        .lo_p   (mc_gm_lo_p),
        .VDD    (VPWR),
        .VSS    (VGND)
        );

endmodule
