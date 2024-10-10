# aclk {FREQ_HZ 300000000 CLK_DOMAIN bd_d216_ddr4_mem00_0_c0_ddr4_ui_clk PHASE 0.00} aclk1 {FREQ_HZ 300000000 CLK_DOMAIN pfm_dynamic_dma_pcie_aclk PHASE 0.0}
# Clock Domain: bd_d216_ddr4_mem00_0_c0_ddr4_ui_clk
create_clock -name aclk -period 3.333 [get_ports aclk]
# Clock Domain: pfm_dynamic_dma_pcie_aclk
create_clock -name aclk1 -period 3.333 [get_ports aclk1]
# Generated clocks
