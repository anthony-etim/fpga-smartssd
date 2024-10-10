################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clkwiz_kernel2_clk_0 -period 2 [get_ports clkwiz_kernel2_clk_0]
create_clock -name clkwiz_kernel_clk_0 -period 3.333 [get_ports clkwiz_kernel_clk_0]
create_clock -name dma_pcie_aclk -period 3.333 [get_ports dma_pcie_aclk]

################################################################################