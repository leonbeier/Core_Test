
module NIOSDuino_Core (
	clk_in_clk,
	pi_export,
	pio_export,
	reset_reset_n,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	sdram_clk_clk,
	flash_MISO,
	flash_MOSI,
	flash_SCLK,
	flash_SS_n,
	uart_rxd,
	uart_txd);	

	input		clk_in_clk;
	inout	[7:0]	pi_export;
	inout	[31:0]	pio_export;
	input		reset_reset_n;
	output	[11:0]	sdram_addr;
	output	[1:0]	sdram_ba;
	output		sdram_cas_n;
	output		sdram_cke;
	output		sdram_cs_n;
	inout	[15:0]	sdram_dq;
	output	[1:0]	sdram_dqm;
	output		sdram_ras_n;
	output		sdram_we_n;
	output		sdram_clk_clk;
	input		flash_MISO;
	output		flash_MOSI;
	output		flash_SCLK;
	output		flash_SS_n;
	input		uart_rxd;
	output		uart_txd;
endmodule
