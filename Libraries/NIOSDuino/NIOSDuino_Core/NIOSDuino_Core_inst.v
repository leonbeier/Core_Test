	NIOSDuino_Core u0 (
		.clk_in_clk    (<connected-to-clk_in_clk>),    //    clk_in.clk
		.pi_export     (<connected-to-pi_export>),     //        pi.export
		.pio_export    (<connected-to-pio_export>),    //       pio.export
		.reset_reset_n (<connected-to-reset_reset_n>), //     reset.reset_n
		.sdram_addr    (<connected-to-sdram_addr>),    //     sdram.addr
		.sdram_ba      (<connected-to-sdram_ba>),      //          .ba
		.sdram_cas_n   (<connected-to-sdram_cas_n>),   //          .cas_n
		.sdram_cke     (<connected-to-sdram_cke>),     //          .cke
		.sdram_cs_n    (<connected-to-sdram_cs_n>),    //          .cs_n
		.sdram_dq      (<connected-to-sdram_dq>),      //          .dq
		.sdram_dqm     (<connected-to-sdram_dqm>),     //          .dqm
		.sdram_ras_n   (<connected-to-sdram_ras_n>),   //          .ras_n
		.sdram_we_n    (<connected-to-sdram_we_n>),    //          .we_n
		.sdram_clk_clk (<connected-to-sdram_clk_clk>), // sdram_clk.clk
		.flash_MISO    (<connected-to-flash_MISO>),    //     flash.MISO
		.flash_MOSI    (<connected-to-flash_MOSI>),    //          .MOSI
		.flash_SCLK    (<connected-to-flash_SCLK>),    //          .SCLK
		.flash_SS_n    (<connected-to-flash_SS_n>),    //          .SS_n
		.uart_rxd      (<connected-to-uart_rxd>),      //      uart.rxd
		.uart_txd      (<connected-to-uart_txd>)       //          .txd
	);

