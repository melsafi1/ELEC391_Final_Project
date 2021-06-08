// RSdecoder_highspeed_rs_0.v

// This file was auto-generated from altera_highspeed_rs_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 16.1 196

`timescale 1 ps / 1 ps
module RSdecoder_highspeed_rs_0 #(
		parameter CHANNEL        = 1,
		parameter BITSPERSYMBOL  = 8,
		parameter N              = 255,
		parameter IRRPOL         = 285,
		parameter PAR            = 10,
		parameter BMSPEED        = 1,
		parameter USERAM         = 1,
		parameter USETRUEDUALRAM = 1,
		parameter USEECCFORRAM   = 0,
		parameter USE_BKP        = 0,
		parameter USE_BYPASS     = 0
	) (
		input  wire        clk_clk,         //   clk.clk
		input  wire        reset_reset_n,   // reset.reset_n
		input  wire        in_valid,        //    in.valid
		input  wire [79:0] in_symbols_in,   //      .symbols_in
		output wire        out_valid,       //   out.valid
		output wire [4:0]  out_errors_out,  //      .errors_out
		output wire [0:0]  out_decfail,     //      .decfail
		output wire [79:0] out_symbols_out  //      .symbols_out
	);

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (CHANNEL != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					channel_check ( .error(1'b1) );
		end
		if (BITSPERSYMBOL != 8)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					bitspersymbol_check ( .error(1'b1) );
		end
		if (N != 255)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					n_check ( .error(1'b1) );
		end
		if (IRRPOL != 285)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					irrpol_check ( .error(1'b1) );
		end
		if (PAR != 10)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					par_check ( .error(1'b1) );
		end
		if (BMSPEED != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					bmspeed_check ( .error(1'b1) );
		end
		if (USERAM != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					useram_check ( .error(1'b1) );
		end
		if (USETRUEDUALRAM != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					usetruedualram_check ( .error(1'b1) );
		end
		if (USEECCFORRAM != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					useeccforram_check ( .error(1'b1) );
		end
		if (USE_BKP != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					use_bkp_check ( .error(1'b1) );
		end
		if (USE_BYPASS != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					use_bypass_check ( .error(1'b1) );
		end
	endgenerate

	rsx_decoder decoder (
		.sysclk      (clk_clk),         // clk.clk
		.reset       (~reset_reset_n),  // rst.reset
		.valid_in    (in_valid),        //  in.valid
		.symbols_in  (in_symbols_in),   //    .symbols_in
		.valid_out   (out_valid),       // out.valid
		.errors_out  (out_errors_out),  //    .errors_out
		.decfail     (out_decfail),     //    .decfail
		.symbols_out (out_symbols_out), //    .symbols_out
		.enable      (1'b1),            // (terminated)
		.bypass      (1'b0)             // (terminated)
	);

endmodule