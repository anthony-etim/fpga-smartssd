# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {XDMA}]
  set_property tooltip {XDMA} ${Page_0}
  set C_S_XDMA_AXI_ID_WIDTH [ipgui::add_param $IPINST -name "C_S_XDMA_AXI_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of ID for for write address, write data, read address and read data} ${C_S_XDMA_AXI_ID_WIDTH}
  set C_S_XDMA_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S_XDMA_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S_XDMA_AXI_DATA_WIDTH}
  set C_S_XDMA_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S_XDMA_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S_XDMA_AXI_ADDR_WIDTH}
  set C_S_XDMA_AXI_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_XDMA_AXI_AWUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of optional user defined signal in write address channel} ${C_S_XDMA_AXI_AWUSER_WIDTH}
  set C_S_XDMA_AXI_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_XDMA_AXI_ARUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of optional user defined signal in read address channel} ${C_S_XDMA_AXI_ARUSER_WIDTH}
  set C_S_XDMA_AXI_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_XDMA_AXI_WUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of optional user defined signal in write data channel} ${C_S_XDMA_AXI_WUSER_WIDTH}
  set C_S_XDMA_AXI_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_XDMA_AXI_RUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of optional user defined signal in read data channel} ${C_S_XDMA_AXI_RUSER_WIDTH}
  set C_S_XDMA_AXI_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_XDMA_AXI_BUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of optional user defined signal in write response channel} ${C_S_XDMA_AXI_BUSER_WIDTH}
  ipgui::add_param $IPINST -name "C_S_XDMA_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_XDMA_AXI_HIGHADDR" -parent ${Page_0}

  #Adding Page
  set DDR0 [ipgui::add_page $IPINST -name "DDR0"]
  ipgui::add_param $IPINST -name "C0_NAME" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_TYPE" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_SIZE" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_AXI_ARBITRATION_SCHEME" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_ControllerType" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_APP_ADDR_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_APP_DATA_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_Mem_Add_Map" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_Ordering" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_ADDR_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_AXI_ADDR_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_AXI_DATA_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_AXI_ID_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_BANK_GROUP_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_BANK_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_CL" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_COLUMN_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_CWL" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_RANK_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_ROW_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tCK" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tCKE" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tFAW" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tMRD" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tRAS" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tRCD" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tREFI" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tRFC" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tRP" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tRTW" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tCCD" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tRRD" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tRRD_L" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tRRD_S" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tRTP" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tWR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tWTR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tWTR_L" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tWTR_S" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tXPR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tZQCS" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tZQI" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_tZQINIT" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_AutoPrecharge" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_AxiNarrowBurst" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_BURST_LENGTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_CAS_LATENCY" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_CAS_WRITE_LATENCY" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DATA_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_MEMORY_PART" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_MEM_ADDR_MAP" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_TIMEPERIOD_PS" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A00_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A01_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A02_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A03_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A04_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A05_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A06_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A07_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A08_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A09_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A10_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A12_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A13_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A14_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A15_BASE_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A00_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A01_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A02_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A03_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A04_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A05_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A06_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A07_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A08_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A09_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A10_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A11_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A12_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A13_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A14_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_A15_HIGH_ADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_ID_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_DATA_WIDTH" -parent ${DDR0} -widget comboBox
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_ADDR_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_AWUSER_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_ARUSER_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_WUSER_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_RUSER_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_BUSER_WIDTH" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_BASEADDR" -parent ${DDR0}
  ipgui::add_param $IPINST -name "C0_DDR_SAXI_HIGHADDR" -parent ${DDR0}

  #Adding Page
  set DDR1 [ipgui::add_page $IPINST -name "DDR1"]
  ipgui::add_param $IPINST -name "C1_NAME" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_TYPE" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_SIZE" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_AXI_ARBITRATION_SCHEME" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_ControllerType" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_APP_ADDR_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_APP_DATA_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_Mem_Add_Map" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_Ordering" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_ADDR_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_AXI_ADDR_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_AXI_DATA_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_AXI_ID_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_BANK_GROUP_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_BANK_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_CL" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_COLUMN_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_CWL" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_RANK_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_ROW_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tCK" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tCKE" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tFAW" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tMRD" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tRAS" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tRCD" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tREFI" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tRFC" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tRP" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tRTW" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tCCD" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tRRD" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tRRD_L" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tRRD_S" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tRTP" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tWR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tWTR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tWTR_L" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tWTR_S" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tXPR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tZQCS" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tZQI" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_tZQINIT" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_AutoPrecharge" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_AxiNarrowBurst" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_BURST_LENGTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_CAS_LATENCY" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_CAS_WRITE_LATENCY" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DATA_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_MEMORY_PART" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_MEM_ADDR_MAP" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_TIMEPERIOD_PS" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A00_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A01_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A02_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A03_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A04_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A05_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A06_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A07_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A08_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A09_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A10_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A12_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A13_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A14_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A15_BASE_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A00_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A01_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A02_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A03_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A04_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A05_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A06_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A07_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A08_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A09_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A10_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A11_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A12_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A13_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A14_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_A15_HIGH_ADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_ID_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_DATA_WIDTH" -parent ${DDR1} -widget comboBox
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_ADDR_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_AWUSER_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_ARUSER_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_WUSER_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_RUSER_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_BASEADDR" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_BUSER_WIDTH" -parent ${DDR1}
  ipgui::add_param $IPINST -name "C1_DDR_SAXI_HIGHADDR" -parent ${DDR1}

  #Adding Page
  set DDR2 [ipgui::add_page $IPINST -name "DDR2"]
  ipgui::add_param $IPINST -name "C2_NAME" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_TYPE" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_SIZE" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_AXI_ARBITRATION_SCHEME" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_ControllerType" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_APP_ADDR_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_APP_DATA_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_Mem_Add_Map" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_Ordering" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_ADDR_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_AXI_ADDR_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_AXI_DATA_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_AXI_ID_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_BANK_GROUP_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_BANK_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_CL" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_COLUMN_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_CWL" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_RANK_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_ROW_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tCK" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tCKE" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tFAW" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tMRD" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tRAS" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tRCD" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tREFI" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tRFC" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tRP" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tRTW" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tCCD" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tRRD" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tRRD_L" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tRRD_S" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tRTP" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tWR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tWTR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tWTR_L" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tWTR_S" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tXPR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tZQCS" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tZQI" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_tZQINIT" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_AutoPrecharge" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_AxiNarrowBurst" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_BURST_LENGTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_CAS_LATENCY" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_CAS_WRITE_LATENCY" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DATA_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_MEMORY_PART" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_MEM_ADDR_MAP" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_TIMEPERIOD_PS" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A00_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A01_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A02_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A03_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A04_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A05_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A06_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A07_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A08_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A09_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A10_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A12_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A13_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A14_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A15_BASE_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A00_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A01_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A02_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A03_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A04_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A05_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A06_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A07_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A08_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A09_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A10_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A11_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A12_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A13_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A14_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_A15_HIGH_ADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_ID_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_DATA_WIDTH" -parent ${DDR2} -widget comboBox
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_ADDR_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_AWUSER_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_ARUSER_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_WUSER_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_RUSER_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_BUSER_WIDTH" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_BASEADDR" -parent ${DDR2}
  ipgui::add_param $IPINST -name "C2_DDR_SAXI_HIGHADDR" -parent ${DDR2}

  #Adding Page
  set DDR3 [ipgui::add_page $IPINST -name "DDR3"]
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_ID_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_DATA_WIDTH" -parent ${DDR3} -widget comboBox
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_ADDR_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_AWUSER_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_ARUSER_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_WUSER_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_RUSER_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_BUSER_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_BASEADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_DDR_SAXI_HIGHADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_NAME" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_TYPE" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_SIZE" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_AXI_ARBITRATION_SCHEME" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_ControllerType" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_APP_ADDR_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_APP_DATA_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_Mem_Add_Map" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_Ordering" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_ADDR_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_AXI_ADDR_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_AXI_DATA_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_AXI_ID_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_BANK_GROUP_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_BANK_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_CL" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_COLUMN_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_CWL" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_RANK_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_ROW_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tCK" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tCKE" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tFAW" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tMRD" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tRAS" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tRCD" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tREFI" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tRFC" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tRP" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tRTW" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tCCD" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tRRD" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tRRD_L" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tRRD_S" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tRTP" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tWR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tWTR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tWTR_L" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tWTR_S" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tXPR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tZQCS" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tZQI" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_tZQINIT" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_AutoPrecharge" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_AxiNarrowBurst" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_BURST_LENGTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_CAS_LATENCY" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_CAS_WRITE_LATENCY" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_DATA_WIDTH" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_MEMORY_PART" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_MEM_ADDR_MAP" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_TIMEPERIOD_PS" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A00_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A01_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A02_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A03_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A04_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A05_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A06_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A07_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A08_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A09_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A10_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A12_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A13_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A14_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A15_BASE_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A00_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A01_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A02_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A03_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A04_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A05_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A06_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A07_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A08_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A09_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A10_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A11_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A12_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A13_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A14_HIGH_ADDR" -parent ${DDR3}
  ipgui::add_param $IPINST -name "C3_A15_HIGH_ADDR" -parent ${DDR3}

  #Adding Page
  set Global [ipgui::add_page $IPINST -name "Global"]
  ipgui::add_param $IPINST -name "C_NUM_SLAVE_SLOTS" -parent ${Global}
  ipgui::add_param $IPINST -name "ADDR_RANGES" -parent ${Global}
  ipgui::add_param $IPINST -name "C_NUMBER_OF_GLOBAL_MEMORIES" -parent ${Global}


}

proc update_PARAM_VALUE.ADDR_RANGES { PARAM_VALUE.ADDR_RANGES } {
	# Procedure called to update ADDR_RANGES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_RANGES { PARAM_VALUE.ADDR_RANGES } {
	# Procedure called to validate ADDR_RANGES
	return true
}

proc update_PARAM_VALUE.C0_A00_BASE_ADDR { PARAM_VALUE.C0_A00_BASE_ADDR } {
	# Procedure called to update C0_A00_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A00_BASE_ADDR { PARAM_VALUE.C0_A00_BASE_ADDR } {
	# Procedure called to validate C0_A00_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A00_HIGH_ADDR { PARAM_VALUE.C0_A00_HIGH_ADDR } {
	# Procedure called to update C0_A00_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A00_HIGH_ADDR { PARAM_VALUE.C0_A00_HIGH_ADDR } {
	# Procedure called to validate C0_A00_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A01_BASE_ADDR { PARAM_VALUE.C0_A01_BASE_ADDR } {
	# Procedure called to update C0_A01_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A01_BASE_ADDR { PARAM_VALUE.C0_A01_BASE_ADDR } {
	# Procedure called to validate C0_A01_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A01_HIGH_ADDR { PARAM_VALUE.C0_A01_HIGH_ADDR } {
	# Procedure called to update C0_A01_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A01_HIGH_ADDR { PARAM_VALUE.C0_A01_HIGH_ADDR } {
	# Procedure called to validate C0_A01_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A02_BASE_ADDR { PARAM_VALUE.C0_A02_BASE_ADDR } {
	# Procedure called to update C0_A02_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A02_BASE_ADDR { PARAM_VALUE.C0_A02_BASE_ADDR } {
	# Procedure called to validate C0_A02_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A02_HIGH_ADDR { PARAM_VALUE.C0_A02_HIGH_ADDR } {
	# Procedure called to update C0_A02_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A02_HIGH_ADDR { PARAM_VALUE.C0_A02_HIGH_ADDR } {
	# Procedure called to validate C0_A02_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A03_BASE_ADDR { PARAM_VALUE.C0_A03_BASE_ADDR } {
	# Procedure called to update C0_A03_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A03_BASE_ADDR { PARAM_VALUE.C0_A03_BASE_ADDR } {
	# Procedure called to validate C0_A03_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A03_HIGH_ADDR { PARAM_VALUE.C0_A03_HIGH_ADDR } {
	# Procedure called to update C0_A03_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A03_HIGH_ADDR { PARAM_VALUE.C0_A03_HIGH_ADDR } {
	# Procedure called to validate C0_A03_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A04_BASE_ADDR { PARAM_VALUE.C0_A04_BASE_ADDR } {
	# Procedure called to update C0_A04_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A04_BASE_ADDR { PARAM_VALUE.C0_A04_BASE_ADDR } {
	# Procedure called to validate C0_A04_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A04_HIGH_ADDR { PARAM_VALUE.C0_A04_HIGH_ADDR } {
	# Procedure called to update C0_A04_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A04_HIGH_ADDR { PARAM_VALUE.C0_A04_HIGH_ADDR } {
	# Procedure called to validate C0_A04_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A05_BASE_ADDR { PARAM_VALUE.C0_A05_BASE_ADDR } {
	# Procedure called to update C0_A05_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A05_BASE_ADDR { PARAM_VALUE.C0_A05_BASE_ADDR } {
	# Procedure called to validate C0_A05_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A05_HIGH_ADDR { PARAM_VALUE.C0_A05_HIGH_ADDR } {
	# Procedure called to update C0_A05_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A05_HIGH_ADDR { PARAM_VALUE.C0_A05_HIGH_ADDR } {
	# Procedure called to validate C0_A05_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A06_BASE_ADDR { PARAM_VALUE.C0_A06_BASE_ADDR } {
	# Procedure called to update C0_A06_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A06_BASE_ADDR { PARAM_VALUE.C0_A06_BASE_ADDR } {
	# Procedure called to validate C0_A06_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A06_HIGH_ADDR { PARAM_VALUE.C0_A06_HIGH_ADDR } {
	# Procedure called to update C0_A06_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A06_HIGH_ADDR { PARAM_VALUE.C0_A06_HIGH_ADDR } {
	# Procedure called to validate C0_A06_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A07_BASE_ADDR { PARAM_VALUE.C0_A07_BASE_ADDR } {
	# Procedure called to update C0_A07_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A07_BASE_ADDR { PARAM_VALUE.C0_A07_BASE_ADDR } {
	# Procedure called to validate C0_A07_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A07_HIGH_ADDR { PARAM_VALUE.C0_A07_HIGH_ADDR } {
	# Procedure called to update C0_A07_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A07_HIGH_ADDR { PARAM_VALUE.C0_A07_HIGH_ADDR } {
	# Procedure called to validate C0_A07_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A08_BASE_ADDR { PARAM_VALUE.C0_A08_BASE_ADDR } {
	# Procedure called to update C0_A08_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A08_BASE_ADDR { PARAM_VALUE.C0_A08_BASE_ADDR } {
	# Procedure called to validate C0_A08_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A08_HIGH_ADDR { PARAM_VALUE.C0_A08_HIGH_ADDR } {
	# Procedure called to update C0_A08_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A08_HIGH_ADDR { PARAM_VALUE.C0_A08_HIGH_ADDR } {
	# Procedure called to validate C0_A08_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A09_BASE_ADDR { PARAM_VALUE.C0_A09_BASE_ADDR } {
	# Procedure called to update C0_A09_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A09_BASE_ADDR { PARAM_VALUE.C0_A09_BASE_ADDR } {
	# Procedure called to validate C0_A09_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A09_HIGH_ADDR { PARAM_VALUE.C0_A09_HIGH_ADDR } {
	# Procedure called to update C0_A09_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A09_HIGH_ADDR { PARAM_VALUE.C0_A09_HIGH_ADDR } {
	# Procedure called to validate C0_A09_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A10_BASE_ADDR { PARAM_VALUE.C0_A10_BASE_ADDR } {
	# Procedure called to update C0_A10_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A10_BASE_ADDR { PARAM_VALUE.C0_A10_BASE_ADDR } {
	# Procedure called to validate C0_A10_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A10_HIGH_ADDR { PARAM_VALUE.C0_A10_HIGH_ADDR } {
	# Procedure called to update C0_A10_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A10_HIGH_ADDR { PARAM_VALUE.C0_A10_HIGH_ADDR } {
	# Procedure called to validate C0_A10_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A11_HIGH_ADDR { PARAM_VALUE.C0_A11_HIGH_ADDR } {
	# Procedure called to update C0_A11_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A11_HIGH_ADDR { PARAM_VALUE.C0_A11_HIGH_ADDR } {
	# Procedure called to validate C0_A11_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A12_BASE_ADDR { PARAM_VALUE.C0_A12_BASE_ADDR } {
	# Procedure called to update C0_A12_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A12_BASE_ADDR { PARAM_VALUE.C0_A12_BASE_ADDR } {
	# Procedure called to validate C0_A12_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A12_HIGH_ADDR { PARAM_VALUE.C0_A12_HIGH_ADDR } {
	# Procedure called to update C0_A12_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A12_HIGH_ADDR { PARAM_VALUE.C0_A12_HIGH_ADDR } {
	# Procedure called to validate C0_A12_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A13_BASE_ADDR { PARAM_VALUE.C0_A13_BASE_ADDR } {
	# Procedure called to update C0_A13_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A13_BASE_ADDR { PARAM_VALUE.C0_A13_BASE_ADDR } {
	# Procedure called to validate C0_A13_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A13_HIGH_ADDR { PARAM_VALUE.C0_A13_HIGH_ADDR } {
	# Procedure called to update C0_A13_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A13_HIGH_ADDR { PARAM_VALUE.C0_A13_HIGH_ADDR } {
	# Procedure called to validate C0_A13_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A14_BASE_ADDR { PARAM_VALUE.C0_A14_BASE_ADDR } {
	# Procedure called to update C0_A14_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A14_BASE_ADDR { PARAM_VALUE.C0_A14_BASE_ADDR } {
	# Procedure called to validate C0_A14_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A14_HIGH_ADDR { PARAM_VALUE.C0_A14_HIGH_ADDR } {
	# Procedure called to update C0_A14_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A14_HIGH_ADDR { PARAM_VALUE.C0_A14_HIGH_ADDR } {
	# Procedure called to validate C0_A14_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A15_BASE_ADDR { PARAM_VALUE.C0_A15_BASE_ADDR } {
	# Procedure called to update C0_A15_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A15_BASE_ADDR { PARAM_VALUE.C0_A15_BASE_ADDR } {
	# Procedure called to validate C0_A15_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C0_A15_HIGH_ADDR { PARAM_VALUE.C0_A15_HIGH_ADDR } {
	# Procedure called to update C0_A15_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_A15_HIGH_ADDR { PARAM_VALUE.C0_A15_HIGH_ADDR } {
	# Procedure called to validate C0_A15_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C0_ADDR_WIDTH { PARAM_VALUE.C0_ADDR_WIDTH } {
	# Procedure called to update C0_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_ADDR_WIDTH { PARAM_VALUE.C0_ADDR_WIDTH } {
	# Procedure called to validate C0_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_APP_ADDR_WIDTH { PARAM_VALUE.C0_APP_ADDR_WIDTH } {
	# Procedure called to update C0_APP_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_APP_ADDR_WIDTH { PARAM_VALUE.C0_APP_ADDR_WIDTH } {
	# Procedure called to validate C0_APP_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_APP_DATA_WIDTH { PARAM_VALUE.C0_APP_DATA_WIDTH } {
	# Procedure called to update C0_APP_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_APP_DATA_WIDTH { PARAM_VALUE.C0_APP_DATA_WIDTH } {
	# Procedure called to validate C0_APP_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_AXI_ADDR_WIDTH { PARAM_VALUE.C0_AXI_ADDR_WIDTH } {
	# Procedure called to update C0_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_AXI_ADDR_WIDTH { PARAM_VALUE.C0_AXI_ADDR_WIDTH } {
	# Procedure called to validate C0_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_AXI_ARBITRATION_SCHEME { PARAM_VALUE.C0_AXI_ARBITRATION_SCHEME } {
	# Procedure called to update C0_AXI_ARBITRATION_SCHEME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_AXI_ARBITRATION_SCHEME { PARAM_VALUE.C0_AXI_ARBITRATION_SCHEME } {
	# Procedure called to validate C0_AXI_ARBITRATION_SCHEME
	return true
}

proc update_PARAM_VALUE.C0_AXI_DATA_WIDTH { PARAM_VALUE.C0_AXI_DATA_WIDTH } {
	# Procedure called to update C0_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_AXI_DATA_WIDTH { PARAM_VALUE.C0_AXI_DATA_WIDTH } {
	# Procedure called to validate C0_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_AXI_ID_WIDTH { PARAM_VALUE.C0_AXI_ID_WIDTH } {
	# Procedure called to update C0_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_AXI_ID_WIDTH { PARAM_VALUE.C0_AXI_ID_WIDTH } {
	# Procedure called to validate C0_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_AutoPrecharge { PARAM_VALUE.C0_AutoPrecharge } {
	# Procedure called to update C0_AutoPrecharge when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_AutoPrecharge { PARAM_VALUE.C0_AutoPrecharge } {
	# Procedure called to validate C0_AutoPrecharge
	return true
}

proc update_PARAM_VALUE.C0_AxiNarrowBurst { PARAM_VALUE.C0_AxiNarrowBurst } {
	# Procedure called to update C0_AxiNarrowBurst when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_AxiNarrowBurst { PARAM_VALUE.C0_AxiNarrowBurst } {
	# Procedure called to validate C0_AxiNarrowBurst
	return true
}

proc update_PARAM_VALUE.C0_BANK_GROUP_WIDTH { PARAM_VALUE.C0_BANK_GROUP_WIDTH } {
	# Procedure called to update C0_BANK_GROUP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_BANK_GROUP_WIDTH { PARAM_VALUE.C0_BANK_GROUP_WIDTH } {
	# Procedure called to validate C0_BANK_GROUP_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_BANK_WIDTH { PARAM_VALUE.C0_BANK_WIDTH } {
	# Procedure called to update C0_BANK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_BANK_WIDTH { PARAM_VALUE.C0_BANK_WIDTH } {
	# Procedure called to validate C0_BANK_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_BURST_LENGTH { PARAM_VALUE.C0_BURST_LENGTH } {
	# Procedure called to update C0_BURST_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_BURST_LENGTH { PARAM_VALUE.C0_BURST_LENGTH } {
	# Procedure called to validate C0_BURST_LENGTH
	return true
}

proc update_PARAM_VALUE.C0_CAS_LATENCY { PARAM_VALUE.C0_CAS_LATENCY } {
	# Procedure called to update C0_CAS_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_CAS_LATENCY { PARAM_VALUE.C0_CAS_LATENCY } {
	# Procedure called to validate C0_CAS_LATENCY
	return true
}

proc update_PARAM_VALUE.C0_CAS_WRITE_LATENCY { PARAM_VALUE.C0_CAS_WRITE_LATENCY } {
	# Procedure called to update C0_CAS_WRITE_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_CAS_WRITE_LATENCY { PARAM_VALUE.C0_CAS_WRITE_LATENCY } {
	# Procedure called to validate C0_CAS_WRITE_LATENCY
	return true
}

proc update_PARAM_VALUE.C0_CL { PARAM_VALUE.C0_CL } {
	# Procedure called to update C0_CL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_CL { PARAM_VALUE.C0_CL } {
	# Procedure called to validate C0_CL
	return true
}

proc update_PARAM_VALUE.C0_COLUMN_WIDTH { PARAM_VALUE.C0_COLUMN_WIDTH } {
	# Procedure called to update C0_COLUMN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_COLUMN_WIDTH { PARAM_VALUE.C0_COLUMN_WIDTH } {
	# Procedure called to validate C0_COLUMN_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_CWL { PARAM_VALUE.C0_CWL } {
	# Procedure called to update C0_CWL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_CWL { PARAM_VALUE.C0_CWL } {
	# Procedure called to validate C0_CWL
	return true
}

proc update_PARAM_VALUE.C0_ControllerType { PARAM_VALUE.C0_ControllerType } {
	# Procedure called to update C0_ControllerType when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_ControllerType { PARAM_VALUE.C0_ControllerType } {
	# Procedure called to validate C0_ControllerType
	return true
}

proc update_PARAM_VALUE.C0_DATA_WIDTH { PARAM_VALUE.C0_DATA_WIDTH } {
	# Procedure called to update C0_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DATA_WIDTH { PARAM_VALUE.C0_DATA_WIDTH } {
	# Procedure called to validate C0_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_MEMORY_PART { PARAM_VALUE.C0_MEMORY_PART } {
	# Procedure called to update C0_MEMORY_PART when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_MEMORY_PART { PARAM_VALUE.C0_MEMORY_PART } {
	# Procedure called to validate C0_MEMORY_PART
	return true
}

proc update_PARAM_VALUE.C0_MEM_ADDR_MAP { PARAM_VALUE.C0_MEM_ADDR_MAP } {
	# Procedure called to update C0_MEM_ADDR_MAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_MEM_ADDR_MAP { PARAM_VALUE.C0_MEM_ADDR_MAP } {
	# Procedure called to validate C0_MEM_ADDR_MAP
	return true
}

proc update_PARAM_VALUE.C0_Mem_Add_Map { PARAM_VALUE.C0_Mem_Add_Map } {
	# Procedure called to update C0_Mem_Add_Map when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_Mem_Add_Map { PARAM_VALUE.C0_Mem_Add_Map } {
	# Procedure called to validate C0_Mem_Add_Map
	return true
}

proc update_PARAM_VALUE.C0_NAME { PARAM_VALUE.C0_NAME } {
	# Procedure called to update C0_NAME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_NAME { PARAM_VALUE.C0_NAME } {
	# Procedure called to validate C0_NAME
	return true
}

proc update_PARAM_VALUE.C0_Ordering { PARAM_VALUE.C0_Ordering } {
	# Procedure called to update C0_Ordering when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_Ordering { PARAM_VALUE.C0_Ordering } {
	# Procedure called to validate C0_Ordering
	return true
}

proc update_PARAM_VALUE.C0_RANK_WIDTH { PARAM_VALUE.C0_RANK_WIDTH } {
	# Procedure called to update C0_RANK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_RANK_WIDTH { PARAM_VALUE.C0_RANK_WIDTH } {
	# Procedure called to validate C0_RANK_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_ROW_WIDTH { PARAM_VALUE.C0_ROW_WIDTH } {
	# Procedure called to update C0_ROW_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_ROW_WIDTH { PARAM_VALUE.C0_ROW_WIDTH } {
	# Procedure called to validate C0_ROW_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_SIZE { PARAM_VALUE.C0_SIZE } {
	# Procedure called to update C0_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_SIZE { PARAM_VALUE.C0_SIZE } {
	# Procedure called to validate C0_SIZE
	return true
}

proc update_PARAM_VALUE.C0_TIMEPERIOD_PS { PARAM_VALUE.C0_TIMEPERIOD_PS } {
	# Procedure called to update C0_TIMEPERIOD_PS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_TIMEPERIOD_PS { PARAM_VALUE.C0_TIMEPERIOD_PS } {
	# Procedure called to validate C0_TIMEPERIOD_PS
	return true
}

proc update_PARAM_VALUE.C0_TYPE { PARAM_VALUE.C0_TYPE } {
	# Procedure called to update C0_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_TYPE { PARAM_VALUE.C0_TYPE } {
	# Procedure called to validate C0_TYPE
	return true
}

proc update_PARAM_VALUE.C0_tCCD { PARAM_VALUE.C0_tCCD } {
	# Procedure called to update C0_tCCD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tCCD { PARAM_VALUE.C0_tCCD } {
	# Procedure called to validate C0_tCCD
	return true
}

proc update_PARAM_VALUE.C0_tCK { PARAM_VALUE.C0_tCK } {
	# Procedure called to update C0_tCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tCK { PARAM_VALUE.C0_tCK } {
	# Procedure called to validate C0_tCK
	return true
}

proc update_PARAM_VALUE.C0_tCKE { PARAM_VALUE.C0_tCKE } {
	# Procedure called to update C0_tCKE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tCKE { PARAM_VALUE.C0_tCKE } {
	# Procedure called to validate C0_tCKE
	return true
}

proc update_PARAM_VALUE.C0_tFAW { PARAM_VALUE.C0_tFAW } {
	# Procedure called to update C0_tFAW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tFAW { PARAM_VALUE.C0_tFAW } {
	# Procedure called to validate C0_tFAW
	return true
}

proc update_PARAM_VALUE.C0_tMRD { PARAM_VALUE.C0_tMRD } {
	# Procedure called to update C0_tMRD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tMRD { PARAM_VALUE.C0_tMRD } {
	# Procedure called to validate C0_tMRD
	return true
}

proc update_PARAM_VALUE.C0_tRAS { PARAM_VALUE.C0_tRAS } {
	# Procedure called to update C0_tRAS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tRAS { PARAM_VALUE.C0_tRAS } {
	# Procedure called to validate C0_tRAS
	return true
}

proc update_PARAM_VALUE.C0_tRCD { PARAM_VALUE.C0_tRCD } {
	# Procedure called to update C0_tRCD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tRCD { PARAM_VALUE.C0_tRCD } {
	# Procedure called to validate C0_tRCD
	return true
}

proc update_PARAM_VALUE.C0_tREFI { PARAM_VALUE.C0_tREFI } {
	# Procedure called to update C0_tREFI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tREFI { PARAM_VALUE.C0_tREFI } {
	# Procedure called to validate C0_tREFI
	return true
}

proc update_PARAM_VALUE.C0_tRFC { PARAM_VALUE.C0_tRFC } {
	# Procedure called to update C0_tRFC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tRFC { PARAM_VALUE.C0_tRFC } {
	# Procedure called to validate C0_tRFC
	return true
}

proc update_PARAM_VALUE.C0_tRP { PARAM_VALUE.C0_tRP } {
	# Procedure called to update C0_tRP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tRP { PARAM_VALUE.C0_tRP } {
	# Procedure called to validate C0_tRP
	return true
}

proc update_PARAM_VALUE.C0_tRRD { PARAM_VALUE.C0_tRRD } {
	# Procedure called to update C0_tRRD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tRRD { PARAM_VALUE.C0_tRRD } {
	# Procedure called to validate C0_tRRD
	return true
}

proc update_PARAM_VALUE.C0_tRRD_L { PARAM_VALUE.C0_tRRD_L } {
	# Procedure called to update C0_tRRD_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tRRD_L { PARAM_VALUE.C0_tRRD_L } {
	# Procedure called to validate C0_tRRD_L
	return true
}

proc update_PARAM_VALUE.C0_tRRD_S { PARAM_VALUE.C0_tRRD_S } {
	# Procedure called to update C0_tRRD_S when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tRRD_S { PARAM_VALUE.C0_tRRD_S } {
	# Procedure called to validate C0_tRRD_S
	return true
}

proc update_PARAM_VALUE.C0_tRTP { PARAM_VALUE.C0_tRTP } {
	# Procedure called to update C0_tRTP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tRTP { PARAM_VALUE.C0_tRTP } {
	# Procedure called to validate C0_tRTP
	return true
}

proc update_PARAM_VALUE.C0_tRTW { PARAM_VALUE.C0_tRTW } {
	# Procedure called to update C0_tRTW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tRTW { PARAM_VALUE.C0_tRTW } {
	# Procedure called to validate C0_tRTW
	return true
}

proc update_PARAM_VALUE.C0_tWR { PARAM_VALUE.C0_tWR } {
	# Procedure called to update C0_tWR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tWR { PARAM_VALUE.C0_tWR } {
	# Procedure called to validate C0_tWR
	return true
}

proc update_PARAM_VALUE.C0_tWTR { PARAM_VALUE.C0_tWTR } {
	# Procedure called to update C0_tWTR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tWTR { PARAM_VALUE.C0_tWTR } {
	# Procedure called to validate C0_tWTR
	return true
}

proc update_PARAM_VALUE.C0_tWTR_L { PARAM_VALUE.C0_tWTR_L } {
	# Procedure called to update C0_tWTR_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tWTR_L { PARAM_VALUE.C0_tWTR_L } {
	# Procedure called to validate C0_tWTR_L
	return true
}

proc update_PARAM_VALUE.C0_tWTR_S { PARAM_VALUE.C0_tWTR_S } {
	# Procedure called to update C0_tWTR_S when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tWTR_S { PARAM_VALUE.C0_tWTR_S } {
	# Procedure called to validate C0_tWTR_S
	return true
}

proc update_PARAM_VALUE.C0_tXPR { PARAM_VALUE.C0_tXPR } {
	# Procedure called to update C0_tXPR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tXPR { PARAM_VALUE.C0_tXPR } {
	# Procedure called to validate C0_tXPR
	return true
}

proc update_PARAM_VALUE.C0_tZQCS { PARAM_VALUE.C0_tZQCS } {
	# Procedure called to update C0_tZQCS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tZQCS { PARAM_VALUE.C0_tZQCS } {
	# Procedure called to validate C0_tZQCS
	return true
}

proc update_PARAM_VALUE.C0_tZQI { PARAM_VALUE.C0_tZQI } {
	# Procedure called to update C0_tZQI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tZQI { PARAM_VALUE.C0_tZQI } {
	# Procedure called to validate C0_tZQI
	return true
}

proc update_PARAM_VALUE.C0_tZQINIT { PARAM_VALUE.C0_tZQINIT } {
	# Procedure called to update C0_tZQINIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_tZQINIT { PARAM_VALUE.C0_tZQINIT } {
	# Procedure called to validate C0_tZQINIT
	return true
}

proc update_PARAM_VALUE.C1_A00_BASE_ADDR { PARAM_VALUE.C1_A00_BASE_ADDR } {
	# Procedure called to update C1_A00_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A00_BASE_ADDR { PARAM_VALUE.C1_A00_BASE_ADDR } {
	# Procedure called to validate C1_A00_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A00_HIGH_ADDR { PARAM_VALUE.C1_A00_HIGH_ADDR } {
	# Procedure called to update C1_A00_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A00_HIGH_ADDR { PARAM_VALUE.C1_A00_HIGH_ADDR } {
	# Procedure called to validate C1_A00_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A01_BASE_ADDR { PARAM_VALUE.C1_A01_BASE_ADDR } {
	# Procedure called to update C1_A01_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A01_BASE_ADDR { PARAM_VALUE.C1_A01_BASE_ADDR } {
	# Procedure called to validate C1_A01_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A01_HIGH_ADDR { PARAM_VALUE.C1_A01_HIGH_ADDR } {
	# Procedure called to update C1_A01_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A01_HIGH_ADDR { PARAM_VALUE.C1_A01_HIGH_ADDR } {
	# Procedure called to validate C1_A01_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A02_BASE_ADDR { PARAM_VALUE.C1_A02_BASE_ADDR } {
	# Procedure called to update C1_A02_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A02_BASE_ADDR { PARAM_VALUE.C1_A02_BASE_ADDR } {
	# Procedure called to validate C1_A02_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A02_HIGH_ADDR { PARAM_VALUE.C1_A02_HIGH_ADDR } {
	# Procedure called to update C1_A02_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A02_HIGH_ADDR { PARAM_VALUE.C1_A02_HIGH_ADDR } {
	# Procedure called to validate C1_A02_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A03_BASE_ADDR { PARAM_VALUE.C1_A03_BASE_ADDR } {
	# Procedure called to update C1_A03_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A03_BASE_ADDR { PARAM_VALUE.C1_A03_BASE_ADDR } {
	# Procedure called to validate C1_A03_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A03_HIGH_ADDR { PARAM_VALUE.C1_A03_HIGH_ADDR } {
	# Procedure called to update C1_A03_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A03_HIGH_ADDR { PARAM_VALUE.C1_A03_HIGH_ADDR } {
	# Procedure called to validate C1_A03_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A04_BASE_ADDR { PARAM_VALUE.C1_A04_BASE_ADDR } {
	# Procedure called to update C1_A04_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A04_BASE_ADDR { PARAM_VALUE.C1_A04_BASE_ADDR } {
	# Procedure called to validate C1_A04_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A04_HIGH_ADDR { PARAM_VALUE.C1_A04_HIGH_ADDR } {
	# Procedure called to update C1_A04_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A04_HIGH_ADDR { PARAM_VALUE.C1_A04_HIGH_ADDR } {
	# Procedure called to validate C1_A04_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A05_BASE_ADDR { PARAM_VALUE.C1_A05_BASE_ADDR } {
	# Procedure called to update C1_A05_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A05_BASE_ADDR { PARAM_VALUE.C1_A05_BASE_ADDR } {
	# Procedure called to validate C1_A05_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A05_HIGH_ADDR { PARAM_VALUE.C1_A05_HIGH_ADDR } {
	# Procedure called to update C1_A05_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A05_HIGH_ADDR { PARAM_VALUE.C1_A05_HIGH_ADDR } {
	# Procedure called to validate C1_A05_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A06_BASE_ADDR { PARAM_VALUE.C1_A06_BASE_ADDR } {
	# Procedure called to update C1_A06_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A06_BASE_ADDR { PARAM_VALUE.C1_A06_BASE_ADDR } {
	# Procedure called to validate C1_A06_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A06_HIGH_ADDR { PARAM_VALUE.C1_A06_HIGH_ADDR } {
	# Procedure called to update C1_A06_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A06_HIGH_ADDR { PARAM_VALUE.C1_A06_HIGH_ADDR } {
	# Procedure called to validate C1_A06_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A07_BASE_ADDR { PARAM_VALUE.C1_A07_BASE_ADDR } {
	# Procedure called to update C1_A07_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A07_BASE_ADDR { PARAM_VALUE.C1_A07_BASE_ADDR } {
	# Procedure called to validate C1_A07_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A07_HIGH_ADDR { PARAM_VALUE.C1_A07_HIGH_ADDR } {
	# Procedure called to update C1_A07_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A07_HIGH_ADDR { PARAM_VALUE.C1_A07_HIGH_ADDR } {
	# Procedure called to validate C1_A07_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A08_BASE_ADDR { PARAM_VALUE.C1_A08_BASE_ADDR } {
	# Procedure called to update C1_A08_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A08_BASE_ADDR { PARAM_VALUE.C1_A08_BASE_ADDR } {
	# Procedure called to validate C1_A08_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A08_HIGH_ADDR { PARAM_VALUE.C1_A08_HIGH_ADDR } {
	# Procedure called to update C1_A08_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A08_HIGH_ADDR { PARAM_VALUE.C1_A08_HIGH_ADDR } {
	# Procedure called to validate C1_A08_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A09_BASE_ADDR { PARAM_VALUE.C1_A09_BASE_ADDR } {
	# Procedure called to update C1_A09_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A09_BASE_ADDR { PARAM_VALUE.C1_A09_BASE_ADDR } {
	# Procedure called to validate C1_A09_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A09_HIGH_ADDR { PARAM_VALUE.C1_A09_HIGH_ADDR } {
	# Procedure called to update C1_A09_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A09_HIGH_ADDR { PARAM_VALUE.C1_A09_HIGH_ADDR } {
	# Procedure called to validate C1_A09_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A10_BASE_ADDR { PARAM_VALUE.C1_A10_BASE_ADDR } {
	# Procedure called to update C1_A10_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A10_BASE_ADDR { PARAM_VALUE.C1_A10_BASE_ADDR } {
	# Procedure called to validate C1_A10_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A10_HIGH_ADDR { PARAM_VALUE.C1_A10_HIGH_ADDR } {
	# Procedure called to update C1_A10_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A10_HIGH_ADDR { PARAM_VALUE.C1_A10_HIGH_ADDR } {
	# Procedure called to validate C1_A10_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A11_HIGH_ADDR { PARAM_VALUE.C1_A11_HIGH_ADDR } {
	# Procedure called to update C1_A11_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A11_HIGH_ADDR { PARAM_VALUE.C1_A11_HIGH_ADDR } {
	# Procedure called to validate C1_A11_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A12_BASE_ADDR { PARAM_VALUE.C1_A12_BASE_ADDR } {
	# Procedure called to update C1_A12_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A12_BASE_ADDR { PARAM_VALUE.C1_A12_BASE_ADDR } {
	# Procedure called to validate C1_A12_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A12_HIGH_ADDR { PARAM_VALUE.C1_A12_HIGH_ADDR } {
	# Procedure called to update C1_A12_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A12_HIGH_ADDR { PARAM_VALUE.C1_A12_HIGH_ADDR } {
	# Procedure called to validate C1_A12_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A13_BASE_ADDR { PARAM_VALUE.C1_A13_BASE_ADDR } {
	# Procedure called to update C1_A13_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A13_BASE_ADDR { PARAM_VALUE.C1_A13_BASE_ADDR } {
	# Procedure called to validate C1_A13_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A13_HIGH_ADDR { PARAM_VALUE.C1_A13_HIGH_ADDR } {
	# Procedure called to update C1_A13_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A13_HIGH_ADDR { PARAM_VALUE.C1_A13_HIGH_ADDR } {
	# Procedure called to validate C1_A13_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A14_BASE_ADDR { PARAM_VALUE.C1_A14_BASE_ADDR } {
	# Procedure called to update C1_A14_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A14_BASE_ADDR { PARAM_VALUE.C1_A14_BASE_ADDR } {
	# Procedure called to validate C1_A14_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A14_HIGH_ADDR { PARAM_VALUE.C1_A14_HIGH_ADDR } {
	# Procedure called to update C1_A14_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A14_HIGH_ADDR { PARAM_VALUE.C1_A14_HIGH_ADDR } {
	# Procedure called to validate C1_A14_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A15_BASE_ADDR { PARAM_VALUE.C1_A15_BASE_ADDR } {
	# Procedure called to update C1_A15_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A15_BASE_ADDR { PARAM_VALUE.C1_A15_BASE_ADDR } {
	# Procedure called to validate C1_A15_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C1_A15_HIGH_ADDR { PARAM_VALUE.C1_A15_HIGH_ADDR } {
	# Procedure called to update C1_A15_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_A15_HIGH_ADDR { PARAM_VALUE.C1_A15_HIGH_ADDR } {
	# Procedure called to validate C1_A15_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C1_ADDR_WIDTH { PARAM_VALUE.C1_ADDR_WIDTH } {
	# Procedure called to update C1_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_ADDR_WIDTH { PARAM_VALUE.C1_ADDR_WIDTH } {
	# Procedure called to validate C1_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_APP_ADDR_WIDTH { PARAM_VALUE.C1_APP_ADDR_WIDTH } {
	# Procedure called to update C1_APP_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_APP_ADDR_WIDTH { PARAM_VALUE.C1_APP_ADDR_WIDTH } {
	# Procedure called to validate C1_APP_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_APP_DATA_WIDTH { PARAM_VALUE.C1_APP_DATA_WIDTH } {
	# Procedure called to update C1_APP_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_APP_DATA_WIDTH { PARAM_VALUE.C1_APP_DATA_WIDTH } {
	# Procedure called to validate C1_APP_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_AXI_ADDR_WIDTH { PARAM_VALUE.C1_AXI_ADDR_WIDTH } {
	# Procedure called to update C1_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_AXI_ADDR_WIDTH { PARAM_VALUE.C1_AXI_ADDR_WIDTH } {
	# Procedure called to validate C1_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_AXI_ARBITRATION_SCHEME { PARAM_VALUE.C1_AXI_ARBITRATION_SCHEME } {
	# Procedure called to update C1_AXI_ARBITRATION_SCHEME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_AXI_ARBITRATION_SCHEME { PARAM_VALUE.C1_AXI_ARBITRATION_SCHEME } {
	# Procedure called to validate C1_AXI_ARBITRATION_SCHEME
	return true
}

proc update_PARAM_VALUE.C1_AXI_DATA_WIDTH { PARAM_VALUE.C1_AXI_DATA_WIDTH } {
	# Procedure called to update C1_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_AXI_DATA_WIDTH { PARAM_VALUE.C1_AXI_DATA_WIDTH } {
	# Procedure called to validate C1_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_AXI_ID_WIDTH { PARAM_VALUE.C1_AXI_ID_WIDTH } {
	# Procedure called to update C1_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_AXI_ID_WIDTH { PARAM_VALUE.C1_AXI_ID_WIDTH } {
	# Procedure called to validate C1_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_AutoPrecharge { PARAM_VALUE.C1_AutoPrecharge } {
	# Procedure called to update C1_AutoPrecharge when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_AutoPrecharge { PARAM_VALUE.C1_AutoPrecharge } {
	# Procedure called to validate C1_AutoPrecharge
	return true
}

proc update_PARAM_VALUE.C1_AxiNarrowBurst { PARAM_VALUE.C1_AxiNarrowBurst } {
	# Procedure called to update C1_AxiNarrowBurst when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_AxiNarrowBurst { PARAM_VALUE.C1_AxiNarrowBurst } {
	# Procedure called to validate C1_AxiNarrowBurst
	return true
}

proc update_PARAM_VALUE.C1_BANK_GROUP_WIDTH { PARAM_VALUE.C1_BANK_GROUP_WIDTH } {
	# Procedure called to update C1_BANK_GROUP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_BANK_GROUP_WIDTH { PARAM_VALUE.C1_BANK_GROUP_WIDTH } {
	# Procedure called to validate C1_BANK_GROUP_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_BANK_WIDTH { PARAM_VALUE.C1_BANK_WIDTH } {
	# Procedure called to update C1_BANK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_BANK_WIDTH { PARAM_VALUE.C1_BANK_WIDTH } {
	# Procedure called to validate C1_BANK_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_BURST_LENGTH { PARAM_VALUE.C1_BURST_LENGTH } {
	# Procedure called to update C1_BURST_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_BURST_LENGTH { PARAM_VALUE.C1_BURST_LENGTH } {
	# Procedure called to validate C1_BURST_LENGTH
	return true
}

proc update_PARAM_VALUE.C1_CAS_LATENCY { PARAM_VALUE.C1_CAS_LATENCY } {
	# Procedure called to update C1_CAS_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_CAS_LATENCY { PARAM_VALUE.C1_CAS_LATENCY } {
	# Procedure called to validate C1_CAS_LATENCY
	return true
}

proc update_PARAM_VALUE.C1_CAS_WRITE_LATENCY { PARAM_VALUE.C1_CAS_WRITE_LATENCY } {
	# Procedure called to update C1_CAS_WRITE_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_CAS_WRITE_LATENCY { PARAM_VALUE.C1_CAS_WRITE_LATENCY } {
	# Procedure called to validate C1_CAS_WRITE_LATENCY
	return true
}

proc update_PARAM_VALUE.C1_CL { PARAM_VALUE.C1_CL } {
	# Procedure called to update C1_CL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_CL { PARAM_VALUE.C1_CL } {
	# Procedure called to validate C1_CL
	return true
}

proc update_PARAM_VALUE.C1_COLUMN_WIDTH { PARAM_VALUE.C1_COLUMN_WIDTH } {
	# Procedure called to update C1_COLUMN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_COLUMN_WIDTH { PARAM_VALUE.C1_COLUMN_WIDTH } {
	# Procedure called to validate C1_COLUMN_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_CWL { PARAM_VALUE.C1_CWL } {
	# Procedure called to update C1_CWL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_CWL { PARAM_VALUE.C1_CWL } {
	# Procedure called to validate C1_CWL
	return true
}

proc update_PARAM_VALUE.C1_ControllerType { PARAM_VALUE.C1_ControllerType } {
	# Procedure called to update C1_ControllerType when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_ControllerType { PARAM_VALUE.C1_ControllerType } {
	# Procedure called to validate C1_ControllerType
	return true
}

proc update_PARAM_VALUE.C1_DATA_WIDTH { PARAM_VALUE.C1_DATA_WIDTH } {
	# Procedure called to update C1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DATA_WIDTH { PARAM_VALUE.C1_DATA_WIDTH } {
	# Procedure called to validate C1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_MEMORY_PART { PARAM_VALUE.C1_MEMORY_PART } {
	# Procedure called to update C1_MEMORY_PART when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_MEMORY_PART { PARAM_VALUE.C1_MEMORY_PART } {
	# Procedure called to validate C1_MEMORY_PART
	return true
}

proc update_PARAM_VALUE.C1_MEM_ADDR_MAP { PARAM_VALUE.C1_MEM_ADDR_MAP } {
	# Procedure called to update C1_MEM_ADDR_MAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_MEM_ADDR_MAP { PARAM_VALUE.C1_MEM_ADDR_MAP } {
	# Procedure called to validate C1_MEM_ADDR_MAP
	return true
}

proc update_PARAM_VALUE.C1_Mem_Add_Map { PARAM_VALUE.C1_Mem_Add_Map } {
	# Procedure called to update C1_Mem_Add_Map when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_Mem_Add_Map { PARAM_VALUE.C1_Mem_Add_Map } {
	# Procedure called to validate C1_Mem_Add_Map
	return true
}

proc update_PARAM_VALUE.C1_NAME { PARAM_VALUE.C1_NAME } {
	# Procedure called to update C1_NAME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_NAME { PARAM_VALUE.C1_NAME } {
	# Procedure called to validate C1_NAME
	return true
}

proc update_PARAM_VALUE.C1_Ordering { PARAM_VALUE.C1_Ordering } {
	# Procedure called to update C1_Ordering when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_Ordering { PARAM_VALUE.C1_Ordering } {
	# Procedure called to validate C1_Ordering
	return true
}

proc update_PARAM_VALUE.C1_RANK_WIDTH { PARAM_VALUE.C1_RANK_WIDTH } {
	# Procedure called to update C1_RANK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_RANK_WIDTH { PARAM_VALUE.C1_RANK_WIDTH } {
	# Procedure called to validate C1_RANK_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_ROW_WIDTH { PARAM_VALUE.C1_ROW_WIDTH } {
	# Procedure called to update C1_ROW_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_ROW_WIDTH { PARAM_VALUE.C1_ROW_WIDTH } {
	# Procedure called to validate C1_ROW_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_SIZE { PARAM_VALUE.C1_SIZE } {
	# Procedure called to update C1_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_SIZE { PARAM_VALUE.C1_SIZE } {
	# Procedure called to validate C1_SIZE
	return true
}

proc update_PARAM_VALUE.C1_TIMEPERIOD_PS { PARAM_VALUE.C1_TIMEPERIOD_PS } {
	# Procedure called to update C1_TIMEPERIOD_PS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_TIMEPERIOD_PS { PARAM_VALUE.C1_TIMEPERIOD_PS } {
	# Procedure called to validate C1_TIMEPERIOD_PS
	return true
}

proc update_PARAM_VALUE.C1_TYPE { PARAM_VALUE.C1_TYPE } {
	# Procedure called to update C1_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_TYPE { PARAM_VALUE.C1_TYPE } {
	# Procedure called to validate C1_TYPE
	return true
}

proc update_PARAM_VALUE.C1_tCCD { PARAM_VALUE.C1_tCCD } {
	# Procedure called to update C1_tCCD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tCCD { PARAM_VALUE.C1_tCCD } {
	# Procedure called to validate C1_tCCD
	return true
}

proc update_PARAM_VALUE.C1_tCK { PARAM_VALUE.C1_tCK } {
	# Procedure called to update C1_tCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tCK { PARAM_VALUE.C1_tCK } {
	# Procedure called to validate C1_tCK
	return true
}

proc update_PARAM_VALUE.C1_tCKE { PARAM_VALUE.C1_tCKE } {
	# Procedure called to update C1_tCKE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tCKE { PARAM_VALUE.C1_tCKE } {
	# Procedure called to validate C1_tCKE
	return true
}

proc update_PARAM_VALUE.C1_tFAW { PARAM_VALUE.C1_tFAW } {
	# Procedure called to update C1_tFAW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tFAW { PARAM_VALUE.C1_tFAW } {
	# Procedure called to validate C1_tFAW
	return true
}

proc update_PARAM_VALUE.C1_tMRD { PARAM_VALUE.C1_tMRD } {
	# Procedure called to update C1_tMRD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tMRD { PARAM_VALUE.C1_tMRD } {
	# Procedure called to validate C1_tMRD
	return true
}

proc update_PARAM_VALUE.C1_tRAS { PARAM_VALUE.C1_tRAS } {
	# Procedure called to update C1_tRAS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tRAS { PARAM_VALUE.C1_tRAS } {
	# Procedure called to validate C1_tRAS
	return true
}

proc update_PARAM_VALUE.C1_tRCD { PARAM_VALUE.C1_tRCD } {
	# Procedure called to update C1_tRCD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tRCD { PARAM_VALUE.C1_tRCD } {
	# Procedure called to validate C1_tRCD
	return true
}

proc update_PARAM_VALUE.C1_tREFI { PARAM_VALUE.C1_tREFI } {
	# Procedure called to update C1_tREFI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tREFI { PARAM_VALUE.C1_tREFI } {
	# Procedure called to validate C1_tREFI
	return true
}

proc update_PARAM_VALUE.C1_tRFC { PARAM_VALUE.C1_tRFC } {
	# Procedure called to update C1_tRFC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tRFC { PARAM_VALUE.C1_tRFC } {
	# Procedure called to validate C1_tRFC
	return true
}

proc update_PARAM_VALUE.C1_tRP { PARAM_VALUE.C1_tRP } {
	# Procedure called to update C1_tRP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tRP { PARAM_VALUE.C1_tRP } {
	# Procedure called to validate C1_tRP
	return true
}

proc update_PARAM_VALUE.C1_tRRD { PARAM_VALUE.C1_tRRD } {
	# Procedure called to update C1_tRRD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tRRD { PARAM_VALUE.C1_tRRD } {
	# Procedure called to validate C1_tRRD
	return true
}

proc update_PARAM_VALUE.C1_tRRD_L { PARAM_VALUE.C1_tRRD_L } {
	# Procedure called to update C1_tRRD_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tRRD_L { PARAM_VALUE.C1_tRRD_L } {
	# Procedure called to validate C1_tRRD_L
	return true
}

proc update_PARAM_VALUE.C1_tRRD_S { PARAM_VALUE.C1_tRRD_S } {
	# Procedure called to update C1_tRRD_S when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tRRD_S { PARAM_VALUE.C1_tRRD_S } {
	# Procedure called to validate C1_tRRD_S
	return true
}

proc update_PARAM_VALUE.C1_tRTP { PARAM_VALUE.C1_tRTP } {
	# Procedure called to update C1_tRTP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tRTP { PARAM_VALUE.C1_tRTP } {
	# Procedure called to validate C1_tRTP
	return true
}

proc update_PARAM_VALUE.C1_tRTW { PARAM_VALUE.C1_tRTW } {
	# Procedure called to update C1_tRTW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tRTW { PARAM_VALUE.C1_tRTW } {
	# Procedure called to validate C1_tRTW
	return true
}

proc update_PARAM_VALUE.C1_tWR { PARAM_VALUE.C1_tWR } {
	# Procedure called to update C1_tWR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tWR { PARAM_VALUE.C1_tWR } {
	# Procedure called to validate C1_tWR
	return true
}

proc update_PARAM_VALUE.C1_tWTR { PARAM_VALUE.C1_tWTR } {
	# Procedure called to update C1_tWTR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tWTR { PARAM_VALUE.C1_tWTR } {
	# Procedure called to validate C1_tWTR
	return true
}

proc update_PARAM_VALUE.C1_tWTR_L { PARAM_VALUE.C1_tWTR_L } {
	# Procedure called to update C1_tWTR_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tWTR_L { PARAM_VALUE.C1_tWTR_L } {
	# Procedure called to validate C1_tWTR_L
	return true
}

proc update_PARAM_VALUE.C1_tWTR_S { PARAM_VALUE.C1_tWTR_S } {
	# Procedure called to update C1_tWTR_S when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tWTR_S { PARAM_VALUE.C1_tWTR_S } {
	# Procedure called to validate C1_tWTR_S
	return true
}

proc update_PARAM_VALUE.C1_tXPR { PARAM_VALUE.C1_tXPR } {
	# Procedure called to update C1_tXPR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tXPR { PARAM_VALUE.C1_tXPR } {
	# Procedure called to validate C1_tXPR
	return true
}

proc update_PARAM_VALUE.C1_tZQCS { PARAM_VALUE.C1_tZQCS } {
	# Procedure called to update C1_tZQCS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tZQCS { PARAM_VALUE.C1_tZQCS } {
	# Procedure called to validate C1_tZQCS
	return true
}

proc update_PARAM_VALUE.C1_tZQI { PARAM_VALUE.C1_tZQI } {
	# Procedure called to update C1_tZQI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tZQI { PARAM_VALUE.C1_tZQI } {
	# Procedure called to validate C1_tZQI
	return true
}

proc update_PARAM_VALUE.C1_tZQINIT { PARAM_VALUE.C1_tZQINIT } {
	# Procedure called to update C1_tZQINIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_tZQINIT { PARAM_VALUE.C1_tZQINIT } {
	# Procedure called to validate C1_tZQINIT
	return true
}

proc update_PARAM_VALUE.C2_A00_BASE_ADDR { PARAM_VALUE.C2_A00_BASE_ADDR } {
	# Procedure called to update C2_A00_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A00_BASE_ADDR { PARAM_VALUE.C2_A00_BASE_ADDR } {
	# Procedure called to validate C2_A00_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A00_HIGH_ADDR { PARAM_VALUE.C2_A00_HIGH_ADDR } {
	# Procedure called to update C2_A00_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A00_HIGH_ADDR { PARAM_VALUE.C2_A00_HIGH_ADDR } {
	# Procedure called to validate C2_A00_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A01_BASE_ADDR { PARAM_VALUE.C2_A01_BASE_ADDR } {
	# Procedure called to update C2_A01_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A01_BASE_ADDR { PARAM_VALUE.C2_A01_BASE_ADDR } {
	# Procedure called to validate C2_A01_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A01_HIGH_ADDR { PARAM_VALUE.C2_A01_HIGH_ADDR } {
	# Procedure called to update C2_A01_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A01_HIGH_ADDR { PARAM_VALUE.C2_A01_HIGH_ADDR } {
	# Procedure called to validate C2_A01_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A02_BASE_ADDR { PARAM_VALUE.C2_A02_BASE_ADDR } {
	# Procedure called to update C2_A02_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A02_BASE_ADDR { PARAM_VALUE.C2_A02_BASE_ADDR } {
	# Procedure called to validate C2_A02_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A02_HIGH_ADDR { PARAM_VALUE.C2_A02_HIGH_ADDR } {
	# Procedure called to update C2_A02_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A02_HIGH_ADDR { PARAM_VALUE.C2_A02_HIGH_ADDR } {
	# Procedure called to validate C2_A02_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A03_BASE_ADDR { PARAM_VALUE.C2_A03_BASE_ADDR } {
	# Procedure called to update C2_A03_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A03_BASE_ADDR { PARAM_VALUE.C2_A03_BASE_ADDR } {
	# Procedure called to validate C2_A03_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A03_HIGH_ADDR { PARAM_VALUE.C2_A03_HIGH_ADDR } {
	# Procedure called to update C2_A03_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A03_HIGH_ADDR { PARAM_VALUE.C2_A03_HIGH_ADDR } {
	# Procedure called to validate C2_A03_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A04_BASE_ADDR { PARAM_VALUE.C2_A04_BASE_ADDR } {
	# Procedure called to update C2_A04_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A04_BASE_ADDR { PARAM_VALUE.C2_A04_BASE_ADDR } {
	# Procedure called to validate C2_A04_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A04_HIGH_ADDR { PARAM_VALUE.C2_A04_HIGH_ADDR } {
	# Procedure called to update C2_A04_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A04_HIGH_ADDR { PARAM_VALUE.C2_A04_HIGH_ADDR } {
	# Procedure called to validate C2_A04_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A05_BASE_ADDR { PARAM_VALUE.C2_A05_BASE_ADDR } {
	# Procedure called to update C2_A05_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A05_BASE_ADDR { PARAM_VALUE.C2_A05_BASE_ADDR } {
	# Procedure called to validate C2_A05_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A05_HIGH_ADDR { PARAM_VALUE.C2_A05_HIGH_ADDR } {
	# Procedure called to update C2_A05_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A05_HIGH_ADDR { PARAM_VALUE.C2_A05_HIGH_ADDR } {
	# Procedure called to validate C2_A05_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A06_BASE_ADDR { PARAM_VALUE.C2_A06_BASE_ADDR } {
	# Procedure called to update C2_A06_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A06_BASE_ADDR { PARAM_VALUE.C2_A06_BASE_ADDR } {
	# Procedure called to validate C2_A06_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A06_HIGH_ADDR { PARAM_VALUE.C2_A06_HIGH_ADDR } {
	# Procedure called to update C2_A06_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A06_HIGH_ADDR { PARAM_VALUE.C2_A06_HIGH_ADDR } {
	# Procedure called to validate C2_A06_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A07_BASE_ADDR { PARAM_VALUE.C2_A07_BASE_ADDR } {
	# Procedure called to update C2_A07_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A07_BASE_ADDR { PARAM_VALUE.C2_A07_BASE_ADDR } {
	# Procedure called to validate C2_A07_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A07_HIGH_ADDR { PARAM_VALUE.C2_A07_HIGH_ADDR } {
	# Procedure called to update C2_A07_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A07_HIGH_ADDR { PARAM_VALUE.C2_A07_HIGH_ADDR } {
	# Procedure called to validate C2_A07_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A08_BASE_ADDR { PARAM_VALUE.C2_A08_BASE_ADDR } {
	# Procedure called to update C2_A08_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A08_BASE_ADDR { PARAM_VALUE.C2_A08_BASE_ADDR } {
	# Procedure called to validate C2_A08_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A08_HIGH_ADDR { PARAM_VALUE.C2_A08_HIGH_ADDR } {
	# Procedure called to update C2_A08_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A08_HIGH_ADDR { PARAM_VALUE.C2_A08_HIGH_ADDR } {
	# Procedure called to validate C2_A08_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A09_BASE_ADDR { PARAM_VALUE.C2_A09_BASE_ADDR } {
	# Procedure called to update C2_A09_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A09_BASE_ADDR { PARAM_VALUE.C2_A09_BASE_ADDR } {
	# Procedure called to validate C2_A09_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A09_HIGH_ADDR { PARAM_VALUE.C2_A09_HIGH_ADDR } {
	# Procedure called to update C2_A09_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A09_HIGH_ADDR { PARAM_VALUE.C2_A09_HIGH_ADDR } {
	# Procedure called to validate C2_A09_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A10_BASE_ADDR { PARAM_VALUE.C2_A10_BASE_ADDR } {
	# Procedure called to update C2_A10_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A10_BASE_ADDR { PARAM_VALUE.C2_A10_BASE_ADDR } {
	# Procedure called to validate C2_A10_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A10_HIGH_ADDR { PARAM_VALUE.C2_A10_HIGH_ADDR } {
	# Procedure called to update C2_A10_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A10_HIGH_ADDR { PARAM_VALUE.C2_A10_HIGH_ADDR } {
	# Procedure called to validate C2_A10_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A11_HIGH_ADDR { PARAM_VALUE.C2_A11_HIGH_ADDR } {
	# Procedure called to update C2_A11_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A11_HIGH_ADDR { PARAM_VALUE.C2_A11_HIGH_ADDR } {
	# Procedure called to validate C2_A11_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A12_BASE_ADDR { PARAM_VALUE.C2_A12_BASE_ADDR } {
	# Procedure called to update C2_A12_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A12_BASE_ADDR { PARAM_VALUE.C2_A12_BASE_ADDR } {
	# Procedure called to validate C2_A12_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A12_HIGH_ADDR { PARAM_VALUE.C2_A12_HIGH_ADDR } {
	# Procedure called to update C2_A12_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A12_HIGH_ADDR { PARAM_VALUE.C2_A12_HIGH_ADDR } {
	# Procedure called to validate C2_A12_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A13_BASE_ADDR { PARAM_VALUE.C2_A13_BASE_ADDR } {
	# Procedure called to update C2_A13_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A13_BASE_ADDR { PARAM_VALUE.C2_A13_BASE_ADDR } {
	# Procedure called to validate C2_A13_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A13_HIGH_ADDR { PARAM_VALUE.C2_A13_HIGH_ADDR } {
	# Procedure called to update C2_A13_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A13_HIGH_ADDR { PARAM_VALUE.C2_A13_HIGH_ADDR } {
	# Procedure called to validate C2_A13_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A14_BASE_ADDR { PARAM_VALUE.C2_A14_BASE_ADDR } {
	# Procedure called to update C2_A14_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A14_BASE_ADDR { PARAM_VALUE.C2_A14_BASE_ADDR } {
	# Procedure called to validate C2_A14_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A14_HIGH_ADDR { PARAM_VALUE.C2_A14_HIGH_ADDR } {
	# Procedure called to update C2_A14_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A14_HIGH_ADDR { PARAM_VALUE.C2_A14_HIGH_ADDR } {
	# Procedure called to validate C2_A14_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A15_BASE_ADDR { PARAM_VALUE.C2_A15_BASE_ADDR } {
	# Procedure called to update C2_A15_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A15_BASE_ADDR { PARAM_VALUE.C2_A15_BASE_ADDR } {
	# Procedure called to validate C2_A15_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C2_A15_HIGH_ADDR { PARAM_VALUE.C2_A15_HIGH_ADDR } {
	# Procedure called to update C2_A15_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_A15_HIGH_ADDR { PARAM_VALUE.C2_A15_HIGH_ADDR } {
	# Procedure called to validate C2_A15_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C2_ADDR_WIDTH { PARAM_VALUE.C2_ADDR_WIDTH } {
	# Procedure called to update C2_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_ADDR_WIDTH { PARAM_VALUE.C2_ADDR_WIDTH } {
	# Procedure called to validate C2_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_APP_ADDR_WIDTH { PARAM_VALUE.C2_APP_ADDR_WIDTH } {
	# Procedure called to update C2_APP_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_APP_ADDR_WIDTH { PARAM_VALUE.C2_APP_ADDR_WIDTH } {
	# Procedure called to validate C2_APP_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_APP_DATA_WIDTH { PARAM_VALUE.C2_APP_DATA_WIDTH } {
	# Procedure called to update C2_APP_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_APP_DATA_WIDTH { PARAM_VALUE.C2_APP_DATA_WIDTH } {
	# Procedure called to validate C2_APP_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_AXI_ADDR_WIDTH { PARAM_VALUE.C2_AXI_ADDR_WIDTH } {
	# Procedure called to update C2_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_AXI_ADDR_WIDTH { PARAM_VALUE.C2_AXI_ADDR_WIDTH } {
	# Procedure called to validate C2_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_AXI_ARBITRATION_SCHEME { PARAM_VALUE.C2_AXI_ARBITRATION_SCHEME } {
	# Procedure called to update C2_AXI_ARBITRATION_SCHEME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_AXI_ARBITRATION_SCHEME { PARAM_VALUE.C2_AXI_ARBITRATION_SCHEME } {
	# Procedure called to validate C2_AXI_ARBITRATION_SCHEME
	return true
}

proc update_PARAM_VALUE.C2_AXI_DATA_WIDTH { PARAM_VALUE.C2_AXI_DATA_WIDTH } {
	# Procedure called to update C2_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_AXI_DATA_WIDTH { PARAM_VALUE.C2_AXI_DATA_WIDTH } {
	# Procedure called to validate C2_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_AXI_ID_WIDTH { PARAM_VALUE.C2_AXI_ID_WIDTH } {
	# Procedure called to update C2_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_AXI_ID_WIDTH { PARAM_VALUE.C2_AXI_ID_WIDTH } {
	# Procedure called to validate C2_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_AutoPrecharge { PARAM_VALUE.C2_AutoPrecharge } {
	# Procedure called to update C2_AutoPrecharge when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_AutoPrecharge { PARAM_VALUE.C2_AutoPrecharge } {
	# Procedure called to validate C2_AutoPrecharge
	return true
}

proc update_PARAM_VALUE.C2_AxiNarrowBurst { PARAM_VALUE.C2_AxiNarrowBurst } {
	# Procedure called to update C2_AxiNarrowBurst when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_AxiNarrowBurst { PARAM_VALUE.C2_AxiNarrowBurst } {
	# Procedure called to validate C2_AxiNarrowBurst
	return true
}

proc update_PARAM_VALUE.C2_BANK_GROUP_WIDTH { PARAM_VALUE.C2_BANK_GROUP_WIDTH } {
	# Procedure called to update C2_BANK_GROUP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_BANK_GROUP_WIDTH { PARAM_VALUE.C2_BANK_GROUP_WIDTH } {
	# Procedure called to validate C2_BANK_GROUP_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_BANK_WIDTH { PARAM_VALUE.C2_BANK_WIDTH } {
	# Procedure called to update C2_BANK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_BANK_WIDTH { PARAM_VALUE.C2_BANK_WIDTH } {
	# Procedure called to validate C2_BANK_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_BURST_LENGTH { PARAM_VALUE.C2_BURST_LENGTH } {
	# Procedure called to update C2_BURST_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_BURST_LENGTH { PARAM_VALUE.C2_BURST_LENGTH } {
	# Procedure called to validate C2_BURST_LENGTH
	return true
}

proc update_PARAM_VALUE.C2_CAS_LATENCY { PARAM_VALUE.C2_CAS_LATENCY } {
	# Procedure called to update C2_CAS_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_CAS_LATENCY { PARAM_VALUE.C2_CAS_LATENCY } {
	# Procedure called to validate C2_CAS_LATENCY
	return true
}

proc update_PARAM_VALUE.C2_CAS_WRITE_LATENCY { PARAM_VALUE.C2_CAS_WRITE_LATENCY } {
	# Procedure called to update C2_CAS_WRITE_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_CAS_WRITE_LATENCY { PARAM_VALUE.C2_CAS_WRITE_LATENCY } {
	# Procedure called to validate C2_CAS_WRITE_LATENCY
	return true
}

proc update_PARAM_VALUE.C2_CL { PARAM_VALUE.C2_CL } {
	# Procedure called to update C2_CL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_CL { PARAM_VALUE.C2_CL } {
	# Procedure called to validate C2_CL
	return true
}

proc update_PARAM_VALUE.C2_COLUMN_WIDTH { PARAM_VALUE.C2_COLUMN_WIDTH } {
	# Procedure called to update C2_COLUMN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_COLUMN_WIDTH { PARAM_VALUE.C2_COLUMN_WIDTH } {
	# Procedure called to validate C2_COLUMN_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_CWL { PARAM_VALUE.C2_CWL } {
	# Procedure called to update C2_CWL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_CWL { PARAM_VALUE.C2_CWL } {
	# Procedure called to validate C2_CWL
	return true
}

proc update_PARAM_VALUE.C2_ControllerType { PARAM_VALUE.C2_ControllerType } {
	# Procedure called to update C2_ControllerType when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_ControllerType { PARAM_VALUE.C2_ControllerType } {
	# Procedure called to validate C2_ControllerType
	return true
}

proc update_PARAM_VALUE.C2_DATA_WIDTH { PARAM_VALUE.C2_DATA_WIDTH } {
	# Procedure called to update C2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DATA_WIDTH { PARAM_VALUE.C2_DATA_WIDTH } {
	# Procedure called to validate C2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_MEMORY_PART { PARAM_VALUE.C2_MEMORY_PART } {
	# Procedure called to update C2_MEMORY_PART when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_MEMORY_PART { PARAM_VALUE.C2_MEMORY_PART } {
	# Procedure called to validate C2_MEMORY_PART
	return true
}

proc update_PARAM_VALUE.C2_MEM_ADDR_MAP { PARAM_VALUE.C2_MEM_ADDR_MAP } {
	# Procedure called to update C2_MEM_ADDR_MAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_MEM_ADDR_MAP { PARAM_VALUE.C2_MEM_ADDR_MAP } {
	# Procedure called to validate C2_MEM_ADDR_MAP
	return true
}

proc update_PARAM_VALUE.C2_Mem_Add_Map { PARAM_VALUE.C2_Mem_Add_Map } {
	# Procedure called to update C2_Mem_Add_Map when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_Mem_Add_Map { PARAM_VALUE.C2_Mem_Add_Map } {
	# Procedure called to validate C2_Mem_Add_Map
	return true
}

proc update_PARAM_VALUE.C2_NAME { PARAM_VALUE.C2_NAME } {
	# Procedure called to update C2_NAME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_NAME { PARAM_VALUE.C2_NAME } {
	# Procedure called to validate C2_NAME
	return true
}

proc update_PARAM_VALUE.C2_Ordering { PARAM_VALUE.C2_Ordering } {
	# Procedure called to update C2_Ordering when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_Ordering { PARAM_VALUE.C2_Ordering } {
	# Procedure called to validate C2_Ordering
	return true
}

proc update_PARAM_VALUE.C2_RANK_WIDTH { PARAM_VALUE.C2_RANK_WIDTH } {
	# Procedure called to update C2_RANK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_RANK_WIDTH { PARAM_VALUE.C2_RANK_WIDTH } {
	# Procedure called to validate C2_RANK_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_ROW_WIDTH { PARAM_VALUE.C2_ROW_WIDTH } {
	# Procedure called to update C2_ROW_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_ROW_WIDTH { PARAM_VALUE.C2_ROW_WIDTH } {
	# Procedure called to validate C2_ROW_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_SIZE { PARAM_VALUE.C2_SIZE } {
	# Procedure called to update C2_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_SIZE { PARAM_VALUE.C2_SIZE } {
	# Procedure called to validate C2_SIZE
	return true
}

proc update_PARAM_VALUE.C2_TIMEPERIOD_PS { PARAM_VALUE.C2_TIMEPERIOD_PS } {
	# Procedure called to update C2_TIMEPERIOD_PS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_TIMEPERIOD_PS { PARAM_VALUE.C2_TIMEPERIOD_PS } {
	# Procedure called to validate C2_TIMEPERIOD_PS
	return true
}

proc update_PARAM_VALUE.C2_TYPE { PARAM_VALUE.C2_TYPE } {
	# Procedure called to update C2_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_TYPE { PARAM_VALUE.C2_TYPE } {
	# Procedure called to validate C2_TYPE
	return true
}

proc update_PARAM_VALUE.C2_tCCD { PARAM_VALUE.C2_tCCD } {
	# Procedure called to update C2_tCCD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tCCD { PARAM_VALUE.C2_tCCD } {
	# Procedure called to validate C2_tCCD
	return true
}

proc update_PARAM_VALUE.C2_tCK { PARAM_VALUE.C2_tCK } {
	# Procedure called to update C2_tCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tCK { PARAM_VALUE.C2_tCK } {
	# Procedure called to validate C2_tCK
	return true
}

proc update_PARAM_VALUE.C2_tCKE { PARAM_VALUE.C2_tCKE } {
	# Procedure called to update C2_tCKE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tCKE { PARAM_VALUE.C2_tCKE } {
	# Procedure called to validate C2_tCKE
	return true
}

proc update_PARAM_VALUE.C2_tFAW { PARAM_VALUE.C2_tFAW } {
	# Procedure called to update C2_tFAW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tFAW { PARAM_VALUE.C2_tFAW } {
	# Procedure called to validate C2_tFAW
	return true
}

proc update_PARAM_VALUE.C2_tMRD { PARAM_VALUE.C2_tMRD } {
	# Procedure called to update C2_tMRD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tMRD { PARAM_VALUE.C2_tMRD } {
	# Procedure called to validate C2_tMRD
	return true
}

proc update_PARAM_VALUE.C2_tRAS { PARAM_VALUE.C2_tRAS } {
	# Procedure called to update C2_tRAS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tRAS { PARAM_VALUE.C2_tRAS } {
	# Procedure called to validate C2_tRAS
	return true
}

proc update_PARAM_VALUE.C2_tRCD { PARAM_VALUE.C2_tRCD } {
	# Procedure called to update C2_tRCD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tRCD { PARAM_VALUE.C2_tRCD } {
	# Procedure called to validate C2_tRCD
	return true
}

proc update_PARAM_VALUE.C2_tREFI { PARAM_VALUE.C2_tREFI } {
	# Procedure called to update C2_tREFI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tREFI { PARAM_VALUE.C2_tREFI } {
	# Procedure called to validate C2_tREFI
	return true
}

proc update_PARAM_VALUE.C2_tRFC { PARAM_VALUE.C2_tRFC } {
	# Procedure called to update C2_tRFC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tRFC { PARAM_VALUE.C2_tRFC } {
	# Procedure called to validate C2_tRFC
	return true
}

proc update_PARAM_VALUE.C2_tRP { PARAM_VALUE.C2_tRP } {
	# Procedure called to update C2_tRP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tRP { PARAM_VALUE.C2_tRP } {
	# Procedure called to validate C2_tRP
	return true
}

proc update_PARAM_VALUE.C2_tRRD { PARAM_VALUE.C2_tRRD } {
	# Procedure called to update C2_tRRD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tRRD { PARAM_VALUE.C2_tRRD } {
	# Procedure called to validate C2_tRRD
	return true
}

proc update_PARAM_VALUE.C2_tRRD_L { PARAM_VALUE.C2_tRRD_L } {
	# Procedure called to update C2_tRRD_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tRRD_L { PARAM_VALUE.C2_tRRD_L } {
	# Procedure called to validate C2_tRRD_L
	return true
}

proc update_PARAM_VALUE.C2_tRRD_S { PARAM_VALUE.C2_tRRD_S } {
	# Procedure called to update C2_tRRD_S when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tRRD_S { PARAM_VALUE.C2_tRRD_S } {
	# Procedure called to validate C2_tRRD_S
	return true
}

proc update_PARAM_VALUE.C2_tRTP { PARAM_VALUE.C2_tRTP } {
	# Procedure called to update C2_tRTP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tRTP { PARAM_VALUE.C2_tRTP } {
	# Procedure called to validate C2_tRTP
	return true
}

proc update_PARAM_VALUE.C2_tRTW { PARAM_VALUE.C2_tRTW } {
	# Procedure called to update C2_tRTW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tRTW { PARAM_VALUE.C2_tRTW } {
	# Procedure called to validate C2_tRTW
	return true
}

proc update_PARAM_VALUE.C2_tWR { PARAM_VALUE.C2_tWR } {
	# Procedure called to update C2_tWR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tWR { PARAM_VALUE.C2_tWR } {
	# Procedure called to validate C2_tWR
	return true
}

proc update_PARAM_VALUE.C2_tWTR { PARAM_VALUE.C2_tWTR } {
	# Procedure called to update C2_tWTR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tWTR { PARAM_VALUE.C2_tWTR } {
	# Procedure called to validate C2_tWTR
	return true
}

proc update_PARAM_VALUE.C2_tWTR_L { PARAM_VALUE.C2_tWTR_L } {
	# Procedure called to update C2_tWTR_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tWTR_L { PARAM_VALUE.C2_tWTR_L } {
	# Procedure called to validate C2_tWTR_L
	return true
}

proc update_PARAM_VALUE.C2_tWTR_S { PARAM_VALUE.C2_tWTR_S } {
	# Procedure called to update C2_tWTR_S when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tWTR_S { PARAM_VALUE.C2_tWTR_S } {
	# Procedure called to validate C2_tWTR_S
	return true
}

proc update_PARAM_VALUE.C2_tXPR { PARAM_VALUE.C2_tXPR } {
	# Procedure called to update C2_tXPR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tXPR { PARAM_VALUE.C2_tXPR } {
	# Procedure called to validate C2_tXPR
	return true
}

proc update_PARAM_VALUE.C2_tZQCS { PARAM_VALUE.C2_tZQCS } {
	# Procedure called to update C2_tZQCS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tZQCS { PARAM_VALUE.C2_tZQCS } {
	# Procedure called to validate C2_tZQCS
	return true
}

proc update_PARAM_VALUE.C2_tZQI { PARAM_VALUE.C2_tZQI } {
	# Procedure called to update C2_tZQI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tZQI { PARAM_VALUE.C2_tZQI } {
	# Procedure called to validate C2_tZQI
	return true
}

proc update_PARAM_VALUE.C2_tZQINIT { PARAM_VALUE.C2_tZQINIT } {
	# Procedure called to update C2_tZQINIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_tZQINIT { PARAM_VALUE.C2_tZQINIT } {
	# Procedure called to validate C2_tZQINIT
	return true
}

proc update_PARAM_VALUE.C3_A00_BASE_ADDR { PARAM_VALUE.C3_A00_BASE_ADDR } {
	# Procedure called to update C3_A00_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A00_BASE_ADDR { PARAM_VALUE.C3_A00_BASE_ADDR } {
	# Procedure called to validate C3_A00_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A00_HIGH_ADDR { PARAM_VALUE.C3_A00_HIGH_ADDR } {
	# Procedure called to update C3_A00_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A00_HIGH_ADDR { PARAM_VALUE.C3_A00_HIGH_ADDR } {
	# Procedure called to validate C3_A00_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A01_BASE_ADDR { PARAM_VALUE.C3_A01_BASE_ADDR } {
	# Procedure called to update C3_A01_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A01_BASE_ADDR { PARAM_VALUE.C3_A01_BASE_ADDR } {
	# Procedure called to validate C3_A01_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A01_HIGH_ADDR { PARAM_VALUE.C3_A01_HIGH_ADDR } {
	# Procedure called to update C3_A01_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A01_HIGH_ADDR { PARAM_VALUE.C3_A01_HIGH_ADDR } {
	# Procedure called to validate C3_A01_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A02_BASE_ADDR { PARAM_VALUE.C3_A02_BASE_ADDR } {
	# Procedure called to update C3_A02_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A02_BASE_ADDR { PARAM_VALUE.C3_A02_BASE_ADDR } {
	# Procedure called to validate C3_A02_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A02_HIGH_ADDR { PARAM_VALUE.C3_A02_HIGH_ADDR } {
	# Procedure called to update C3_A02_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A02_HIGH_ADDR { PARAM_VALUE.C3_A02_HIGH_ADDR } {
	# Procedure called to validate C3_A02_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A03_BASE_ADDR { PARAM_VALUE.C3_A03_BASE_ADDR } {
	# Procedure called to update C3_A03_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A03_BASE_ADDR { PARAM_VALUE.C3_A03_BASE_ADDR } {
	# Procedure called to validate C3_A03_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A03_HIGH_ADDR { PARAM_VALUE.C3_A03_HIGH_ADDR } {
	# Procedure called to update C3_A03_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A03_HIGH_ADDR { PARAM_VALUE.C3_A03_HIGH_ADDR } {
	# Procedure called to validate C3_A03_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A04_BASE_ADDR { PARAM_VALUE.C3_A04_BASE_ADDR } {
	# Procedure called to update C3_A04_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A04_BASE_ADDR { PARAM_VALUE.C3_A04_BASE_ADDR } {
	# Procedure called to validate C3_A04_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A04_HIGH_ADDR { PARAM_VALUE.C3_A04_HIGH_ADDR } {
	# Procedure called to update C3_A04_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A04_HIGH_ADDR { PARAM_VALUE.C3_A04_HIGH_ADDR } {
	# Procedure called to validate C3_A04_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A05_BASE_ADDR { PARAM_VALUE.C3_A05_BASE_ADDR } {
	# Procedure called to update C3_A05_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A05_BASE_ADDR { PARAM_VALUE.C3_A05_BASE_ADDR } {
	# Procedure called to validate C3_A05_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A05_HIGH_ADDR { PARAM_VALUE.C3_A05_HIGH_ADDR } {
	# Procedure called to update C3_A05_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A05_HIGH_ADDR { PARAM_VALUE.C3_A05_HIGH_ADDR } {
	# Procedure called to validate C3_A05_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A06_BASE_ADDR { PARAM_VALUE.C3_A06_BASE_ADDR } {
	# Procedure called to update C3_A06_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A06_BASE_ADDR { PARAM_VALUE.C3_A06_BASE_ADDR } {
	# Procedure called to validate C3_A06_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A06_HIGH_ADDR { PARAM_VALUE.C3_A06_HIGH_ADDR } {
	# Procedure called to update C3_A06_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A06_HIGH_ADDR { PARAM_VALUE.C3_A06_HIGH_ADDR } {
	# Procedure called to validate C3_A06_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A07_BASE_ADDR { PARAM_VALUE.C3_A07_BASE_ADDR } {
	# Procedure called to update C3_A07_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A07_BASE_ADDR { PARAM_VALUE.C3_A07_BASE_ADDR } {
	# Procedure called to validate C3_A07_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A07_HIGH_ADDR { PARAM_VALUE.C3_A07_HIGH_ADDR } {
	# Procedure called to update C3_A07_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A07_HIGH_ADDR { PARAM_VALUE.C3_A07_HIGH_ADDR } {
	# Procedure called to validate C3_A07_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A08_BASE_ADDR { PARAM_VALUE.C3_A08_BASE_ADDR } {
	# Procedure called to update C3_A08_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A08_BASE_ADDR { PARAM_VALUE.C3_A08_BASE_ADDR } {
	# Procedure called to validate C3_A08_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A08_HIGH_ADDR { PARAM_VALUE.C3_A08_HIGH_ADDR } {
	# Procedure called to update C3_A08_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A08_HIGH_ADDR { PARAM_VALUE.C3_A08_HIGH_ADDR } {
	# Procedure called to validate C3_A08_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A09_BASE_ADDR { PARAM_VALUE.C3_A09_BASE_ADDR } {
	# Procedure called to update C3_A09_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A09_BASE_ADDR { PARAM_VALUE.C3_A09_BASE_ADDR } {
	# Procedure called to validate C3_A09_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A09_HIGH_ADDR { PARAM_VALUE.C3_A09_HIGH_ADDR } {
	# Procedure called to update C3_A09_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A09_HIGH_ADDR { PARAM_VALUE.C3_A09_HIGH_ADDR } {
	# Procedure called to validate C3_A09_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A10_BASE_ADDR { PARAM_VALUE.C3_A10_BASE_ADDR } {
	# Procedure called to update C3_A10_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A10_BASE_ADDR { PARAM_VALUE.C3_A10_BASE_ADDR } {
	# Procedure called to validate C3_A10_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A10_HIGH_ADDR { PARAM_VALUE.C3_A10_HIGH_ADDR } {
	# Procedure called to update C3_A10_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A10_HIGH_ADDR { PARAM_VALUE.C3_A10_HIGH_ADDR } {
	# Procedure called to validate C3_A10_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A11_HIGH_ADDR { PARAM_VALUE.C3_A11_HIGH_ADDR } {
	# Procedure called to update C3_A11_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A11_HIGH_ADDR { PARAM_VALUE.C3_A11_HIGH_ADDR } {
	# Procedure called to validate C3_A11_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A12_BASE_ADDR { PARAM_VALUE.C3_A12_BASE_ADDR } {
	# Procedure called to update C3_A12_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A12_BASE_ADDR { PARAM_VALUE.C3_A12_BASE_ADDR } {
	# Procedure called to validate C3_A12_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A12_HIGH_ADDR { PARAM_VALUE.C3_A12_HIGH_ADDR } {
	# Procedure called to update C3_A12_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A12_HIGH_ADDR { PARAM_VALUE.C3_A12_HIGH_ADDR } {
	# Procedure called to validate C3_A12_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A13_BASE_ADDR { PARAM_VALUE.C3_A13_BASE_ADDR } {
	# Procedure called to update C3_A13_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A13_BASE_ADDR { PARAM_VALUE.C3_A13_BASE_ADDR } {
	# Procedure called to validate C3_A13_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A13_HIGH_ADDR { PARAM_VALUE.C3_A13_HIGH_ADDR } {
	# Procedure called to update C3_A13_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A13_HIGH_ADDR { PARAM_VALUE.C3_A13_HIGH_ADDR } {
	# Procedure called to validate C3_A13_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A14_BASE_ADDR { PARAM_VALUE.C3_A14_BASE_ADDR } {
	# Procedure called to update C3_A14_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A14_BASE_ADDR { PARAM_VALUE.C3_A14_BASE_ADDR } {
	# Procedure called to validate C3_A14_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A14_HIGH_ADDR { PARAM_VALUE.C3_A14_HIGH_ADDR } {
	# Procedure called to update C3_A14_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A14_HIGH_ADDR { PARAM_VALUE.C3_A14_HIGH_ADDR } {
	# Procedure called to validate C3_A14_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A15_BASE_ADDR { PARAM_VALUE.C3_A15_BASE_ADDR } {
	# Procedure called to update C3_A15_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A15_BASE_ADDR { PARAM_VALUE.C3_A15_BASE_ADDR } {
	# Procedure called to validate C3_A15_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C3_A15_HIGH_ADDR { PARAM_VALUE.C3_A15_HIGH_ADDR } {
	# Procedure called to update C3_A15_HIGH_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_A15_HIGH_ADDR { PARAM_VALUE.C3_A15_HIGH_ADDR } {
	# Procedure called to validate C3_A15_HIGH_ADDR
	return true
}

proc update_PARAM_VALUE.C3_ADDR_WIDTH { PARAM_VALUE.C3_ADDR_WIDTH } {
	# Procedure called to update C3_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_ADDR_WIDTH { PARAM_VALUE.C3_ADDR_WIDTH } {
	# Procedure called to validate C3_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_APP_ADDR_WIDTH { PARAM_VALUE.C3_APP_ADDR_WIDTH } {
	# Procedure called to update C3_APP_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_APP_ADDR_WIDTH { PARAM_VALUE.C3_APP_ADDR_WIDTH } {
	# Procedure called to validate C3_APP_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_APP_DATA_WIDTH { PARAM_VALUE.C3_APP_DATA_WIDTH } {
	# Procedure called to update C3_APP_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_APP_DATA_WIDTH { PARAM_VALUE.C3_APP_DATA_WIDTH } {
	# Procedure called to validate C3_APP_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_AXI_ADDR_WIDTH { PARAM_VALUE.C3_AXI_ADDR_WIDTH } {
	# Procedure called to update C3_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_AXI_ADDR_WIDTH { PARAM_VALUE.C3_AXI_ADDR_WIDTH } {
	# Procedure called to validate C3_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_AXI_ARBITRATION_SCHEME { PARAM_VALUE.C3_AXI_ARBITRATION_SCHEME } {
	# Procedure called to update C3_AXI_ARBITRATION_SCHEME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_AXI_ARBITRATION_SCHEME { PARAM_VALUE.C3_AXI_ARBITRATION_SCHEME } {
	# Procedure called to validate C3_AXI_ARBITRATION_SCHEME
	return true
}

proc update_PARAM_VALUE.C3_AXI_DATA_WIDTH { PARAM_VALUE.C3_AXI_DATA_WIDTH } {
	# Procedure called to update C3_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_AXI_DATA_WIDTH { PARAM_VALUE.C3_AXI_DATA_WIDTH } {
	# Procedure called to validate C3_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_AXI_ID_WIDTH { PARAM_VALUE.C3_AXI_ID_WIDTH } {
	# Procedure called to update C3_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_AXI_ID_WIDTH { PARAM_VALUE.C3_AXI_ID_WIDTH } {
	# Procedure called to validate C3_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_AutoPrecharge { PARAM_VALUE.C3_AutoPrecharge } {
	# Procedure called to update C3_AutoPrecharge when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_AutoPrecharge { PARAM_VALUE.C3_AutoPrecharge } {
	# Procedure called to validate C3_AutoPrecharge
	return true
}

proc update_PARAM_VALUE.C3_AxiNarrowBurst { PARAM_VALUE.C3_AxiNarrowBurst } {
	# Procedure called to update C3_AxiNarrowBurst when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_AxiNarrowBurst { PARAM_VALUE.C3_AxiNarrowBurst } {
	# Procedure called to validate C3_AxiNarrowBurst
	return true
}

proc update_PARAM_VALUE.C3_BANK_GROUP_WIDTH { PARAM_VALUE.C3_BANK_GROUP_WIDTH } {
	# Procedure called to update C3_BANK_GROUP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_BANK_GROUP_WIDTH { PARAM_VALUE.C3_BANK_GROUP_WIDTH } {
	# Procedure called to validate C3_BANK_GROUP_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_BANK_WIDTH { PARAM_VALUE.C3_BANK_WIDTH } {
	# Procedure called to update C3_BANK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_BANK_WIDTH { PARAM_VALUE.C3_BANK_WIDTH } {
	# Procedure called to validate C3_BANK_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_BURST_LENGTH { PARAM_VALUE.C3_BURST_LENGTH } {
	# Procedure called to update C3_BURST_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_BURST_LENGTH { PARAM_VALUE.C3_BURST_LENGTH } {
	# Procedure called to validate C3_BURST_LENGTH
	return true
}

proc update_PARAM_VALUE.C3_CAS_LATENCY { PARAM_VALUE.C3_CAS_LATENCY } {
	# Procedure called to update C3_CAS_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_CAS_LATENCY { PARAM_VALUE.C3_CAS_LATENCY } {
	# Procedure called to validate C3_CAS_LATENCY
	return true
}

proc update_PARAM_VALUE.C3_CAS_WRITE_LATENCY { PARAM_VALUE.C3_CAS_WRITE_LATENCY } {
	# Procedure called to update C3_CAS_WRITE_LATENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_CAS_WRITE_LATENCY { PARAM_VALUE.C3_CAS_WRITE_LATENCY } {
	# Procedure called to validate C3_CAS_WRITE_LATENCY
	return true
}

proc update_PARAM_VALUE.C3_CL { PARAM_VALUE.C3_CL } {
	# Procedure called to update C3_CL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_CL { PARAM_VALUE.C3_CL } {
	# Procedure called to validate C3_CL
	return true
}

proc update_PARAM_VALUE.C3_COLUMN_WIDTH { PARAM_VALUE.C3_COLUMN_WIDTH } {
	# Procedure called to update C3_COLUMN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_COLUMN_WIDTH { PARAM_VALUE.C3_COLUMN_WIDTH } {
	# Procedure called to validate C3_COLUMN_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_CWL { PARAM_VALUE.C3_CWL } {
	# Procedure called to update C3_CWL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_CWL { PARAM_VALUE.C3_CWL } {
	# Procedure called to validate C3_CWL
	return true
}

proc update_PARAM_VALUE.C3_ControllerType { PARAM_VALUE.C3_ControllerType } {
	# Procedure called to update C3_ControllerType when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_ControllerType { PARAM_VALUE.C3_ControllerType } {
	# Procedure called to validate C3_ControllerType
	return true
}

proc update_PARAM_VALUE.C3_DATA_WIDTH { PARAM_VALUE.C3_DATA_WIDTH } {
	# Procedure called to update C3_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DATA_WIDTH { PARAM_VALUE.C3_DATA_WIDTH } {
	# Procedure called to validate C3_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_MEMORY_PART { PARAM_VALUE.C3_MEMORY_PART } {
	# Procedure called to update C3_MEMORY_PART when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_MEMORY_PART { PARAM_VALUE.C3_MEMORY_PART } {
	# Procedure called to validate C3_MEMORY_PART
	return true
}

proc update_PARAM_VALUE.C3_MEM_ADDR_MAP { PARAM_VALUE.C3_MEM_ADDR_MAP } {
	# Procedure called to update C3_MEM_ADDR_MAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_MEM_ADDR_MAP { PARAM_VALUE.C3_MEM_ADDR_MAP } {
	# Procedure called to validate C3_MEM_ADDR_MAP
	return true
}

proc update_PARAM_VALUE.C3_Mem_Add_Map { PARAM_VALUE.C3_Mem_Add_Map } {
	# Procedure called to update C3_Mem_Add_Map when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_Mem_Add_Map { PARAM_VALUE.C3_Mem_Add_Map } {
	# Procedure called to validate C3_Mem_Add_Map
	return true
}

proc update_PARAM_VALUE.C3_NAME { PARAM_VALUE.C3_NAME } {
	# Procedure called to update C3_NAME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_NAME { PARAM_VALUE.C3_NAME } {
	# Procedure called to validate C3_NAME
	return true
}

proc update_PARAM_VALUE.C3_Ordering { PARAM_VALUE.C3_Ordering } {
	# Procedure called to update C3_Ordering when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_Ordering { PARAM_VALUE.C3_Ordering } {
	# Procedure called to validate C3_Ordering
	return true
}

proc update_PARAM_VALUE.C3_RANK_WIDTH { PARAM_VALUE.C3_RANK_WIDTH } {
	# Procedure called to update C3_RANK_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_RANK_WIDTH { PARAM_VALUE.C3_RANK_WIDTH } {
	# Procedure called to validate C3_RANK_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_ROW_WIDTH { PARAM_VALUE.C3_ROW_WIDTH } {
	# Procedure called to update C3_ROW_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_ROW_WIDTH { PARAM_VALUE.C3_ROW_WIDTH } {
	# Procedure called to validate C3_ROW_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_SIZE { PARAM_VALUE.C3_SIZE } {
	# Procedure called to update C3_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_SIZE { PARAM_VALUE.C3_SIZE } {
	# Procedure called to validate C3_SIZE
	return true
}

proc update_PARAM_VALUE.C3_TIMEPERIOD_PS { PARAM_VALUE.C3_TIMEPERIOD_PS } {
	# Procedure called to update C3_TIMEPERIOD_PS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_TIMEPERIOD_PS { PARAM_VALUE.C3_TIMEPERIOD_PS } {
	# Procedure called to validate C3_TIMEPERIOD_PS
	return true
}

proc update_PARAM_VALUE.C3_TYPE { PARAM_VALUE.C3_TYPE } {
	# Procedure called to update C3_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_TYPE { PARAM_VALUE.C3_TYPE } {
	# Procedure called to validate C3_TYPE
	return true
}

proc update_PARAM_VALUE.C3_tCCD { PARAM_VALUE.C3_tCCD } {
	# Procedure called to update C3_tCCD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tCCD { PARAM_VALUE.C3_tCCD } {
	# Procedure called to validate C3_tCCD
	return true
}

proc update_PARAM_VALUE.C3_tCK { PARAM_VALUE.C3_tCK } {
	# Procedure called to update C3_tCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tCK { PARAM_VALUE.C3_tCK } {
	# Procedure called to validate C3_tCK
	return true
}

proc update_PARAM_VALUE.C3_tCKE { PARAM_VALUE.C3_tCKE } {
	# Procedure called to update C3_tCKE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tCKE { PARAM_VALUE.C3_tCKE } {
	# Procedure called to validate C3_tCKE
	return true
}

proc update_PARAM_VALUE.C3_tFAW { PARAM_VALUE.C3_tFAW } {
	# Procedure called to update C3_tFAW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tFAW { PARAM_VALUE.C3_tFAW } {
	# Procedure called to validate C3_tFAW
	return true
}

proc update_PARAM_VALUE.C3_tMRD { PARAM_VALUE.C3_tMRD } {
	# Procedure called to update C3_tMRD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tMRD { PARAM_VALUE.C3_tMRD } {
	# Procedure called to validate C3_tMRD
	return true
}

proc update_PARAM_VALUE.C3_tRAS { PARAM_VALUE.C3_tRAS } {
	# Procedure called to update C3_tRAS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tRAS { PARAM_VALUE.C3_tRAS } {
	# Procedure called to validate C3_tRAS
	return true
}

proc update_PARAM_VALUE.C3_tRCD { PARAM_VALUE.C3_tRCD } {
	# Procedure called to update C3_tRCD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tRCD { PARAM_VALUE.C3_tRCD } {
	# Procedure called to validate C3_tRCD
	return true
}

proc update_PARAM_VALUE.C3_tREFI { PARAM_VALUE.C3_tREFI } {
	# Procedure called to update C3_tREFI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tREFI { PARAM_VALUE.C3_tREFI } {
	# Procedure called to validate C3_tREFI
	return true
}

proc update_PARAM_VALUE.C3_tRFC { PARAM_VALUE.C3_tRFC } {
	# Procedure called to update C3_tRFC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tRFC { PARAM_VALUE.C3_tRFC } {
	# Procedure called to validate C3_tRFC
	return true
}

proc update_PARAM_VALUE.C3_tRP { PARAM_VALUE.C3_tRP } {
	# Procedure called to update C3_tRP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tRP { PARAM_VALUE.C3_tRP } {
	# Procedure called to validate C3_tRP
	return true
}

proc update_PARAM_VALUE.C3_tRRD { PARAM_VALUE.C3_tRRD } {
	# Procedure called to update C3_tRRD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tRRD { PARAM_VALUE.C3_tRRD } {
	# Procedure called to validate C3_tRRD
	return true
}

proc update_PARAM_VALUE.C3_tRRD_L { PARAM_VALUE.C3_tRRD_L } {
	# Procedure called to update C3_tRRD_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tRRD_L { PARAM_VALUE.C3_tRRD_L } {
	# Procedure called to validate C3_tRRD_L
	return true
}

proc update_PARAM_VALUE.C3_tRRD_S { PARAM_VALUE.C3_tRRD_S } {
	# Procedure called to update C3_tRRD_S when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tRRD_S { PARAM_VALUE.C3_tRRD_S } {
	# Procedure called to validate C3_tRRD_S
	return true
}

proc update_PARAM_VALUE.C3_tRTP { PARAM_VALUE.C3_tRTP } {
	# Procedure called to update C3_tRTP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tRTP { PARAM_VALUE.C3_tRTP } {
	# Procedure called to validate C3_tRTP
	return true
}

proc update_PARAM_VALUE.C3_tRTW { PARAM_VALUE.C3_tRTW } {
	# Procedure called to update C3_tRTW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tRTW { PARAM_VALUE.C3_tRTW } {
	# Procedure called to validate C3_tRTW
	return true
}

proc update_PARAM_VALUE.C3_tWR { PARAM_VALUE.C3_tWR } {
	# Procedure called to update C3_tWR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tWR { PARAM_VALUE.C3_tWR } {
	# Procedure called to validate C3_tWR
	return true
}

proc update_PARAM_VALUE.C3_tWTR { PARAM_VALUE.C3_tWTR } {
	# Procedure called to update C3_tWTR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tWTR { PARAM_VALUE.C3_tWTR } {
	# Procedure called to validate C3_tWTR
	return true
}

proc update_PARAM_VALUE.C3_tWTR_L { PARAM_VALUE.C3_tWTR_L } {
	# Procedure called to update C3_tWTR_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tWTR_L { PARAM_VALUE.C3_tWTR_L } {
	# Procedure called to validate C3_tWTR_L
	return true
}

proc update_PARAM_VALUE.C3_tWTR_S { PARAM_VALUE.C3_tWTR_S } {
	# Procedure called to update C3_tWTR_S when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tWTR_S { PARAM_VALUE.C3_tWTR_S } {
	# Procedure called to validate C3_tWTR_S
	return true
}

proc update_PARAM_VALUE.C3_tXPR { PARAM_VALUE.C3_tXPR } {
	# Procedure called to update C3_tXPR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tXPR { PARAM_VALUE.C3_tXPR } {
	# Procedure called to validate C3_tXPR
	return true
}

proc update_PARAM_VALUE.C3_tZQCS { PARAM_VALUE.C3_tZQCS } {
	# Procedure called to update C3_tZQCS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tZQCS { PARAM_VALUE.C3_tZQCS } {
	# Procedure called to validate C3_tZQCS
	return true
}

proc update_PARAM_VALUE.C3_tZQI { PARAM_VALUE.C3_tZQI } {
	# Procedure called to update C3_tZQI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tZQI { PARAM_VALUE.C3_tZQI } {
	# Procedure called to validate C3_tZQI
	return true
}

proc update_PARAM_VALUE.C3_tZQINIT { PARAM_VALUE.C3_tZQINIT } {
	# Procedure called to update C3_tZQINIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_tZQINIT { PARAM_VALUE.C3_tZQINIT } {
	# Procedure called to validate C3_tZQINIT
	return true
}

proc update_PARAM_VALUE.C_NUMBER_OF_GLOBAL_MEMORIES { PARAM_VALUE.C_NUMBER_OF_GLOBAL_MEMORIES } {
	# Procedure called to update C_NUMBER_OF_GLOBAL_MEMORIES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUMBER_OF_GLOBAL_MEMORIES { PARAM_VALUE.C_NUMBER_OF_GLOBAL_MEMORIES } {
	# Procedure called to validate C_NUMBER_OF_GLOBAL_MEMORIES
	return true
}

proc update_PARAM_VALUE.C_NUM_SLAVE_SLOTS { PARAM_VALUE.C_NUM_SLAVE_SLOTS } {
	# Procedure called to update C_NUM_SLAVE_SLOTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_SLAVE_SLOTS { PARAM_VALUE.C_NUM_SLAVE_SLOTS } {
	# Procedure called to validate C_NUM_SLAVE_SLOTS
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_ID_WIDTH { PARAM_VALUE.C2_DDR_SAXI_ID_WIDTH } {
	# Procedure called to update C2_DDR_SAXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_ID_WIDTH { PARAM_VALUE.C2_DDR_SAXI_ID_WIDTH } {
	# Procedure called to validate C2_DDR_SAXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_DATA_WIDTH { PARAM_VALUE.C2_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to update C2_DDR_SAXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_DATA_WIDTH { PARAM_VALUE.C2_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to validate C2_DDR_SAXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_ADDR_WIDTH { PARAM_VALUE.C2_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to update C2_DDR_SAXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_ADDR_WIDTH { PARAM_VALUE.C2_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to validate C2_DDR_SAXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_AWUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to update C2_DDR_SAXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_AWUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to validate C2_DDR_SAXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_ARUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to update C2_DDR_SAXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_ARUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to validate C2_DDR_SAXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_WUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to update C2_DDR_SAXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_WUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to validate C2_DDR_SAXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_RUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to update C2_DDR_SAXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_RUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to validate C2_DDR_SAXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_BUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to update C2_DDR_SAXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_BUSER_WIDTH { PARAM_VALUE.C2_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to validate C2_DDR_SAXI_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_BASEADDR { PARAM_VALUE.C2_DDR_SAXI_BASEADDR } {
	# Procedure called to update C2_DDR_SAXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_BASEADDR { PARAM_VALUE.C2_DDR_SAXI_BASEADDR } {
	# Procedure called to validate C2_DDR_SAXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C2_DDR_SAXI_HIGHADDR { PARAM_VALUE.C2_DDR_SAXI_HIGHADDR } {
	# Procedure called to update C2_DDR_SAXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C2_DDR_SAXI_HIGHADDR { PARAM_VALUE.C2_DDR_SAXI_HIGHADDR } {
	# Procedure called to validate C2_DDR_SAXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_ID_WIDTH { PARAM_VALUE.C0_DDR_SAXI_ID_WIDTH } {
	# Procedure called to update C0_DDR_SAXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_ID_WIDTH { PARAM_VALUE.C0_DDR_SAXI_ID_WIDTH } {
	# Procedure called to validate C0_DDR_SAXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_DATA_WIDTH { PARAM_VALUE.C0_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to update C0_DDR_SAXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_DATA_WIDTH { PARAM_VALUE.C0_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to validate C0_DDR_SAXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_ADDR_WIDTH { PARAM_VALUE.C0_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to update C0_DDR_SAXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_ADDR_WIDTH { PARAM_VALUE.C0_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to validate C0_DDR_SAXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_AWUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to update C0_DDR_SAXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_AWUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to validate C0_DDR_SAXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_ARUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to update C0_DDR_SAXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_ARUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to validate C0_DDR_SAXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_WUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to update C0_DDR_SAXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_WUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to validate C0_DDR_SAXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_RUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to update C0_DDR_SAXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_RUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to validate C0_DDR_SAXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_BUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to update C0_DDR_SAXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_BUSER_WIDTH { PARAM_VALUE.C0_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to validate C0_DDR_SAXI_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_BASEADDR { PARAM_VALUE.C0_DDR_SAXI_BASEADDR } {
	# Procedure called to update C0_DDR_SAXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_BASEADDR { PARAM_VALUE.C0_DDR_SAXI_BASEADDR } {
	# Procedure called to validate C0_DDR_SAXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C0_DDR_SAXI_HIGHADDR { PARAM_VALUE.C0_DDR_SAXI_HIGHADDR } {
	# Procedure called to update C0_DDR_SAXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C0_DDR_SAXI_HIGHADDR { PARAM_VALUE.C0_DDR_SAXI_HIGHADDR } {
	# Procedure called to validate C0_DDR_SAXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_ID_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_ID_WIDTH } {
	# Procedure called to update C_S_XDMA_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_ID_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_ID_WIDTH } {
	# Procedure called to validate C_S_XDMA_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_DATA_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_XDMA_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_DATA_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_XDMA_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_XDMA_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_XDMA_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_AWUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_S_XDMA_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_AWUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_S_XDMA_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_ARUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_S_XDMA_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_ARUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_S_XDMA_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_WUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_WUSER_WIDTH } {
	# Procedure called to update C_S_XDMA_AXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_WUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_WUSER_WIDTH } {
	# Procedure called to validate C_S_XDMA_AXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_RUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_RUSER_WIDTH } {
	# Procedure called to update C_S_XDMA_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_RUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_S_XDMA_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_BUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_BUSER_WIDTH } {
	# Procedure called to update C_S_XDMA_AXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_BUSER_WIDTH { PARAM_VALUE.C_S_XDMA_AXI_BUSER_WIDTH } {
	# Procedure called to validate C_S_XDMA_AXI_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_BASEADDR { PARAM_VALUE.C_S_XDMA_AXI_BASEADDR } {
	# Procedure called to update C_S_XDMA_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_BASEADDR { PARAM_VALUE.C_S_XDMA_AXI_BASEADDR } {
	# Procedure called to validate C_S_XDMA_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_XDMA_AXI_HIGHADDR { PARAM_VALUE.C_S_XDMA_AXI_HIGHADDR } {
	# Procedure called to update C_S_XDMA_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_XDMA_AXI_HIGHADDR { PARAM_VALUE.C_S_XDMA_AXI_HIGHADDR } {
	# Procedure called to validate C_S_XDMA_AXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_ID_WIDTH { PARAM_VALUE.C1_DDR_SAXI_ID_WIDTH } {
	# Procedure called to update C1_DDR_SAXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_ID_WIDTH { PARAM_VALUE.C1_DDR_SAXI_ID_WIDTH } {
	# Procedure called to validate C1_DDR_SAXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_DATA_WIDTH { PARAM_VALUE.C1_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to update C1_DDR_SAXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_DATA_WIDTH { PARAM_VALUE.C1_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to validate C1_DDR_SAXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_ADDR_WIDTH { PARAM_VALUE.C1_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to update C1_DDR_SAXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_ADDR_WIDTH { PARAM_VALUE.C1_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to validate C1_DDR_SAXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_AWUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to update C1_DDR_SAXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_AWUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to validate C1_DDR_SAXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_ARUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to update C1_DDR_SAXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_ARUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to validate C1_DDR_SAXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_WUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to update C1_DDR_SAXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_WUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to validate C1_DDR_SAXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_RUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to update C1_DDR_SAXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_RUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to validate C1_DDR_SAXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_BUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to update C1_DDR_SAXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_BUSER_WIDTH { PARAM_VALUE.C1_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to validate C1_DDR_SAXI_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_BASEADDR { PARAM_VALUE.C1_DDR_SAXI_BASEADDR } {
	# Procedure called to update C1_DDR_SAXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_BASEADDR { PARAM_VALUE.C1_DDR_SAXI_BASEADDR } {
	# Procedure called to validate C1_DDR_SAXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C1_DDR_SAXI_HIGHADDR { PARAM_VALUE.C1_DDR_SAXI_HIGHADDR } {
	# Procedure called to update C1_DDR_SAXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C1_DDR_SAXI_HIGHADDR { PARAM_VALUE.C1_DDR_SAXI_HIGHADDR } {
	# Procedure called to validate C1_DDR_SAXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_ID_WIDTH { PARAM_VALUE.C3_DDR_SAXI_ID_WIDTH } {
	# Procedure called to update C3_DDR_SAXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_ID_WIDTH { PARAM_VALUE.C3_DDR_SAXI_ID_WIDTH } {
	# Procedure called to validate C3_DDR_SAXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_DATA_WIDTH { PARAM_VALUE.C3_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to update C3_DDR_SAXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_DATA_WIDTH { PARAM_VALUE.C3_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to validate C3_DDR_SAXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_ADDR_WIDTH { PARAM_VALUE.C3_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to update C3_DDR_SAXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_ADDR_WIDTH { PARAM_VALUE.C3_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to validate C3_DDR_SAXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_AWUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to update C3_DDR_SAXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_AWUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to validate C3_DDR_SAXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_ARUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to update C3_DDR_SAXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_ARUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to validate C3_DDR_SAXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_WUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to update C3_DDR_SAXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_WUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to validate C3_DDR_SAXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_RUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to update C3_DDR_SAXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_RUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to validate C3_DDR_SAXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_BUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to update C3_DDR_SAXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_BUSER_WIDTH { PARAM_VALUE.C3_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to validate C3_DDR_SAXI_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_BASEADDR { PARAM_VALUE.C3_DDR_SAXI_BASEADDR } {
	# Procedure called to update C3_DDR_SAXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_BASEADDR { PARAM_VALUE.C3_DDR_SAXI_BASEADDR } {
	# Procedure called to validate C3_DDR_SAXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C3_DDR_SAXI_HIGHADDR { PARAM_VALUE.C3_DDR_SAXI_HIGHADDR } {
	# Procedure called to update C3_DDR_SAXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C3_DDR_SAXI_HIGHADDR { PARAM_VALUE.C3_DDR_SAXI_HIGHADDR } {
	# Procedure called to validate C3_DDR_SAXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C2_DDR_SAXI_ID_WIDTH { MODELPARAM_VALUE.C2_DDR_SAXI_ID_WIDTH PARAM_VALUE.C2_DDR_SAXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_DDR_SAXI_ID_WIDTH}] ${MODELPARAM_VALUE.C2_DDR_SAXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_DDR_SAXI_DATA_WIDTH { MODELPARAM_VALUE.C2_DDR_SAXI_DATA_WIDTH PARAM_VALUE.C2_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_DDR_SAXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C2_DDR_SAXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_DDR_SAXI_ADDR_WIDTH { MODELPARAM_VALUE.C2_DDR_SAXI_ADDR_WIDTH PARAM_VALUE.C2_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_DDR_SAXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C2_DDR_SAXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_DDR_SAXI_AWUSER_WIDTH { MODELPARAM_VALUE.C2_DDR_SAXI_AWUSER_WIDTH PARAM_VALUE.C2_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_DDR_SAXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C2_DDR_SAXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_DDR_SAXI_ARUSER_WIDTH { MODELPARAM_VALUE.C2_DDR_SAXI_ARUSER_WIDTH PARAM_VALUE.C2_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_DDR_SAXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C2_DDR_SAXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_DDR_SAXI_WUSER_WIDTH { MODELPARAM_VALUE.C2_DDR_SAXI_WUSER_WIDTH PARAM_VALUE.C2_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_DDR_SAXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C2_DDR_SAXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_DDR_SAXI_RUSER_WIDTH { MODELPARAM_VALUE.C2_DDR_SAXI_RUSER_WIDTH PARAM_VALUE.C2_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_DDR_SAXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C2_DDR_SAXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_DDR_SAXI_BUSER_WIDTH { MODELPARAM_VALUE.C2_DDR_SAXI_BUSER_WIDTH PARAM_VALUE.C2_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_DDR_SAXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C2_DDR_SAXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_DDR_SAXI_ID_WIDTH { MODELPARAM_VALUE.C0_DDR_SAXI_ID_WIDTH PARAM_VALUE.C0_DDR_SAXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_DDR_SAXI_ID_WIDTH}] ${MODELPARAM_VALUE.C0_DDR_SAXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_DDR_SAXI_DATA_WIDTH { MODELPARAM_VALUE.C0_DDR_SAXI_DATA_WIDTH PARAM_VALUE.C0_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_DDR_SAXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C0_DDR_SAXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_DDR_SAXI_ADDR_WIDTH { MODELPARAM_VALUE.C0_DDR_SAXI_ADDR_WIDTH PARAM_VALUE.C0_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_DDR_SAXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C0_DDR_SAXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_DDR_SAXI_AWUSER_WIDTH { MODELPARAM_VALUE.C0_DDR_SAXI_AWUSER_WIDTH PARAM_VALUE.C0_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_DDR_SAXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C0_DDR_SAXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_DDR_SAXI_ARUSER_WIDTH { MODELPARAM_VALUE.C0_DDR_SAXI_ARUSER_WIDTH PARAM_VALUE.C0_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_DDR_SAXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C0_DDR_SAXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_DDR_SAXI_WUSER_WIDTH { MODELPARAM_VALUE.C0_DDR_SAXI_WUSER_WIDTH PARAM_VALUE.C0_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_DDR_SAXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C0_DDR_SAXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_DDR_SAXI_RUSER_WIDTH { MODELPARAM_VALUE.C0_DDR_SAXI_RUSER_WIDTH PARAM_VALUE.C0_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_DDR_SAXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C0_DDR_SAXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_DDR_SAXI_BUSER_WIDTH { MODELPARAM_VALUE.C0_DDR_SAXI_BUSER_WIDTH PARAM_VALUE.C0_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_DDR_SAXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C0_DDR_SAXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_XDMA_AXI_ID_WIDTH { MODELPARAM_VALUE.C_S_XDMA_AXI_ID_WIDTH PARAM_VALUE.C_S_XDMA_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_XDMA_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_S_XDMA_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_XDMA_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_XDMA_AXI_DATA_WIDTH PARAM_VALUE.C_S_XDMA_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_XDMA_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_XDMA_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_XDMA_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_XDMA_AXI_ADDR_WIDTH PARAM_VALUE.C_S_XDMA_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_XDMA_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_XDMA_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_XDMA_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_S_XDMA_AXI_AWUSER_WIDTH PARAM_VALUE.C_S_XDMA_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_XDMA_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_XDMA_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_XDMA_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_S_XDMA_AXI_ARUSER_WIDTH PARAM_VALUE.C_S_XDMA_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_XDMA_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_XDMA_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_XDMA_AXI_WUSER_WIDTH { MODELPARAM_VALUE.C_S_XDMA_AXI_WUSER_WIDTH PARAM_VALUE.C_S_XDMA_AXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_XDMA_AXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_XDMA_AXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_XDMA_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_S_XDMA_AXI_RUSER_WIDTH PARAM_VALUE.C_S_XDMA_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_XDMA_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_XDMA_AXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_XDMA_AXI_BUSER_WIDTH { MODELPARAM_VALUE.C_S_XDMA_AXI_BUSER_WIDTH PARAM_VALUE.C_S_XDMA_AXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_XDMA_AXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_XDMA_AXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_DDR_SAXI_ID_WIDTH { MODELPARAM_VALUE.C1_DDR_SAXI_ID_WIDTH PARAM_VALUE.C1_DDR_SAXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_DDR_SAXI_ID_WIDTH}] ${MODELPARAM_VALUE.C1_DDR_SAXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_DDR_SAXI_DATA_WIDTH { MODELPARAM_VALUE.C1_DDR_SAXI_DATA_WIDTH PARAM_VALUE.C1_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_DDR_SAXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C1_DDR_SAXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_DDR_SAXI_ADDR_WIDTH { MODELPARAM_VALUE.C1_DDR_SAXI_ADDR_WIDTH PARAM_VALUE.C1_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_DDR_SAXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C1_DDR_SAXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_DDR_SAXI_AWUSER_WIDTH { MODELPARAM_VALUE.C1_DDR_SAXI_AWUSER_WIDTH PARAM_VALUE.C1_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_DDR_SAXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C1_DDR_SAXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_DDR_SAXI_ARUSER_WIDTH { MODELPARAM_VALUE.C1_DDR_SAXI_ARUSER_WIDTH PARAM_VALUE.C1_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_DDR_SAXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C1_DDR_SAXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_DDR_SAXI_WUSER_WIDTH { MODELPARAM_VALUE.C1_DDR_SAXI_WUSER_WIDTH PARAM_VALUE.C1_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_DDR_SAXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C1_DDR_SAXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_DDR_SAXI_RUSER_WIDTH { MODELPARAM_VALUE.C1_DDR_SAXI_RUSER_WIDTH PARAM_VALUE.C1_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_DDR_SAXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C1_DDR_SAXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_DDR_SAXI_BUSER_WIDTH { MODELPARAM_VALUE.C1_DDR_SAXI_BUSER_WIDTH PARAM_VALUE.C1_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_DDR_SAXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C1_DDR_SAXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_DDR_SAXI_ID_WIDTH { MODELPARAM_VALUE.C3_DDR_SAXI_ID_WIDTH PARAM_VALUE.C3_DDR_SAXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_DDR_SAXI_ID_WIDTH}] ${MODELPARAM_VALUE.C3_DDR_SAXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_DDR_SAXI_DATA_WIDTH { MODELPARAM_VALUE.C3_DDR_SAXI_DATA_WIDTH PARAM_VALUE.C3_DDR_SAXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_DDR_SAXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C3_DDR_SAXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_DDR_SAXI_ADDR_WIDTH { MODELPARAM_VALUE.C3_DDR_SAXI_ADDR_WIDTH PARAM_VALUE.C3_DDR_SAXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_DDR_SAXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C3_DDR_SAXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_DDR_SAXI_AWUSER_WIDTH { MODELPARAM_VALUE.C3_DDR_SAXI_AWUSER_WIDTH PARAM_VALUE.C3_DDR_SAXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_DDR_SAXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C3_DDR_SAXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_DDR_SAXI_ARUSER_WIDTH { MODELPARAM_VALUE.C3_DDR_SAXI_ARUSER_WIDTH PARAM_VALUE.C3_DDR_SAXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_DDR_SAXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C3_DDR_SAXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_DDR_SAXI_WUSER_WIDTH { MODELPARAM_VALUE.C3_DDR_SAXI_WUSER_WIDTH PARAM_VALUE.C3_DDR_SAXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_DDR_SAXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C3_DDR_SAXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_DDR_SAXI_RUSER_WIDTH { MODELPARAM_VALUE.C3_DDR_SAXI_RUSER_WIDTH PARAM_VALUE.C3_DDR_SAXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_DDR_SAXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C3_DDR_SAXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_DDR_SAXI_BUSER_WIDTH { MODELPARAM_VALUE.C3_DDR_SAXI_BUSER_WIDTH PARAM_VALUE.C3_DDR_SAXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_DDR_SAXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C3_DDR_SAXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.Component_Name { MODELPARAM_VALUE.Component_Name PARAM_VALUE.Component_Name } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Component_Name}] ${MODELPARAM_VALUE.Component_Name}
}

proc update_MODELPARAM_VALUE.C_NUM_SLAVE_SLOTS { MODELPARAM_VALUE.C_NUM_SLAVE_SLOTS PARAM_VALUE.C_NUM_SLAVE_SLOTS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_SLAVE_SLOTS}] ${MODELPARAM_VALUE.C_NUM_SLAVE_SLOTS}
}

proc update_MODELPARAM_VALUE.C_ADDR_RANGES { MODELPARAM_VALUE.C_ADDR_RANGES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_ADDR_RANGES". Setting updated value from the model parameter.
set_property value 1 ${MODELPARAM_VALUE.C_ADDR_RANGES}
}

proc update_MODELPARAM_VALUE.C_NUMBER_OF_GLOBAL_MEMORIES { MODELPARAM_VALUE.C_NUMBER_OF_GLOBAL_MEMORIES PARAM_VALUE.C_NUMBER_OF_GLOBAL_MEMORIES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUMBER_OF_GLOBAL_MEMORIES}] ${MODELPARAM_VALUE.C_NUMBER_OF_GLOBAL_MEMORIES}
}

proc update_MODELPARAM_VALUE.C0_NAME { MODELPARAM_VALUE.C0_NAME PARAM_VALUE.C0_NAME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_NAME}] ${MODELPARAM_VALUE.C0_NAME}
}

proc update_MODELPARAM_VALUE.C0_TYPE { MODELPARAM_VALUE.C0_TYPE PARAM_VALUE.C0_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_TYPE}] ${MODELPARAM_VALUE.C0_TYPE}
}

proc update_MODELPARAM_VALUE.C0_SIZE { MODELPARAM_VALUE.C0_SIZE PARAM_VALUE.C0_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_SIZE}] ${MODELPARAM_VALUE.C0_SIZE}
}

proc update_MODELPARAM_VALUE.C0_AXI_ARBITRATION_SCHEME { MODELPARAM_VALUE.C0_AXI_ARBITRATION_SCHEME PARAM_VALUE.C0_AXI_ARBITRATION_SCHEME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_AXI_ARBITRATION_SCHEME}] ${MODELPARAM_VALUE.C0_AXI_ARBITRATION_SCHEME}
}

proc update_MODELPARAM_VALUE.C0_ControllerType { MODELPARAM_VALUE.C0_ControllerType PARAM_VALUE.C0_ControllerType } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_ControllerType}] ${MODELPARAM_VALUE.C0_ControllerType}
}

proc update_MODELPARAM_VALUE.C0_APP_ADDR_WIDTH { MODELPARAM_VALUE.C0_APP_ADDR_WIDTH PARAM_VALUE.C0_APP_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_APP_ADDR_WIDTH}] ${MODELPARAM_VALUE.C0_APP_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_APP_DATA_WIDTH { MODELPARAM_VALUE.C0_APP_DATA_WIDTH PARAM_VALUE.C0_APP_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_APP_DATA_WIDTH}] ${MODELPARAM_VALUE.C0_APP_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_Mem_Add_Map { MODELPARAM_VALUE.C0_Mem_Add_Map PARAM_VALUE.C0_Mem_Add_Map } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_Mem_Add_Map}] ${MODELPARAM_VALUE.C0_Mem_Add_Map}
}

proc update_MODELPARAM_VALUE.C0_Ordering { MODELPARAM_VALUE.C0_Ordering PARAM_VALUE.C0_Ordering } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_Ordering}] ${MODELPARAM_VALUE.C0_Ordering}
}

proc update_MODELPARAM_VALUE.C0_ADDR_WIDTH { MODELPARAM_VALUE.C0_ADDR_WIDTH PARAM_VALUE.C0_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_ADDR_WIDTH}] ${MODELPARAM_VALUE.C0_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C0_AXI_ADDR_WIDTH PARAM_VALUE.C0_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C0_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_AXI_DATA_WIDTH { MODELPARAM_VALUE.C0_AXI_DATA_WIDTH PARAM_VALUE.C0_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C0_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_AXI_ID_WIDTH { MODELPARAM_VALUE.C0_AXI_ID_WIDTH PARAM_VALUE.C0_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C0_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_BANK_GROUP_WIDTH { MODELPARAM_VALUE.C0_BANK_GROUP_WIDTH PARAM_VALUE.C0_BANK_GROUP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_BANK_GROUP_WIDTH}] ${MODELPARAM_VALUE.C0_BANK_GROUP_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_BANK_WIDTH { MODELPARAM_VALUE.C0_BANK_WIDTH PARAM_VALUE.C0_BANK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_BANK_WIDTH}] ${MODELPARAM_VALUE.C0_BANK_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_CL { MODELPARAM_VALUE.C0_CL PARAM_VALUE.C0_CL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_CL}] ${MODELPARAM_VALUE.C0_CL}
}

proc update_MODELPARAM_VALUE.C0_COLUMN_WIDTH { MODELPARAM_VALUE.C0_COLUMN_WIDTH PARAM_VALUE.C0_COLUMN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_COLUMN_WIDTH}] ${MODELPARAM_VALUE.C0_COLUMN_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_CWL { MODELPARAM_VALUE.C0_CWL PARAM_VALUE.C0_CWL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_CWL}] ${MODELPARAM_VALUE.C0_CWL}
}

proc update_MODELPARAM_VALUE.C0_RANK_WIDTH { MODELPARAM_VALUE.C0_RANK_WIDTH PARAM_VALUE.C0_RANK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_RANK_WIDTH}] ${MODELPARAM_VALUE.C0_RANK_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_ROW_WIDTH { MODELPARAM_VALUE.C0_ROW_WIDTH PARAM_VALUE.C0_ROW_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_ROW_WIDTH}] ${MODELPARAM_VALUE.C0_ROW_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_tCK { MODELPARAM_VALUE.C0_tCK PARAM_VALUE.C0_tCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tCK}] ${MODELPARAM_VALUE.C0_tCK}
}

proc update_MODELPARAM_VALUE.C0_tCKE { MODELPARAM_VALUE.C0_tCKE PARAM_VALUE.C0_tCKE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tCKE}] ${MODELPARAM_VALUE.C0_tCKE}
}

proc update_MODELPARAM_VALUE.C0_tFAW { MODELPARAM_VALUE.C0_tFAW PARAM_VALUE.C0_tFAW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tFAW}] ${MODELPARAM_VALUE.C0_tFAW}
}

proc update_MODELPARAM_VALUE.C0_tMRD { MODELPARAM_VALUE.C0_tMRD PARAM_VALUE.C0_tMRD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tMRD}] ${MODELPARAM_VALUE.C0_tMRD}
}

proc update_MODELPARAM_VALUE.C0_tRAS { MODELPARAM_VALUE.C0_tRAS PARAM_VALUE.C0_tRAS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tRAS}] ${MODELPARAM_VALUE.C0_tRAS}
}

proc update_MODELPARAM_VALUE.C0_tRCD { MODELPARAM_VALUE.C0_tRCD PARAM_VALUE.C0_tRCD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tRCD}] ${MODELPARAM_VALUE.C0_tRCD}
}

proc update_MODELPARAM_VALUE.C0_tREFI { MODELPARAM_VALUE.C0_tREFI PARAM_VALUE.C0_tREFI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tREFI}] ${MODELPARAM_VALUE.C0_tREFI}
}

proc update_MODELPARAM_VALUE.C0_tRFC { MODELPARAM_VALUE.C0_tRFC PARAM_VALUE.C0_tRFC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tRFC}] ${MODELPARAM_VALUE.C0_tRFC}
}

proc update_MODELPARAM_VALUE.C0_tRP { MODELPARAM_VALUE.C0_tRP PARAM_VALUE.C0_tRP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tRP}] ${MODELPARAM_VALUE.C0_tRP}
}

proc update_MODELPARAM_VALUE.C0_tRTW { MODELPARAM_VALUE.C0_tRTW PARAM_VALUE.C0_tRTW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tRTW}] ${MODELPARAM_VALUE.C0_tRTW}
}

proc update_MODELPARAM_VALUE.C0_tCCD { MODELPARAM_VALUE.C0_tCCD PARAM_VALUE.C0_tCCD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tCCD}] ${MODELPARAM_VALUE.C0_tCCD}
}

proc update_MODELPARAM_VALUE.C0_tRRD { MODELPARAM_VALUE.C0_tRRD PARAM_VALUE.C0_tRRD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tRRD}] ${MODELPARAM_VALUE.C0_tRRD}
}

proc update_MODELPARAM_VALUE.C0_tRRD_L { MODELPARAM_VALUE.C0_tRRD_L PARAM_VALUE.C0_tRRD_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tRRD_L}] ${MODELPARAM_VALUE.C0_tRRD_L}
}

proc update_MODELPARAM_VALUE.C0_tRRD_S { MODELPARAM_VALUE.C0_tRRD_S PARAM_VALUE.C0_tRRD_S } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tRRD_S}] ${MODELPARAM_VALUE.C0_tRRD_S}
}

proc update_MODELPARAM_VALUE.C0_tRTP { MODELPARAM_VALUE.C0_tRTP PARAM_VALUE.C0_tRTP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tRTP}] ${MODELPARAM_VALUE.C0_tRTP}
}

proc update_MODELPARAM_VALUE.C0_tWR { MODELPARAM_VALUE.C0_tWR PARAM_VALUE.C0_tWR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tWR}] ${MODELPARAM_VALUE.C0_tWR}
}

proc update_MODELPARAM_VALUE.C0_tWTR { MODELPARAM_VALUE.C0_tWTR PARAM_VALUE.C0_tWTR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tWTR}] ${MODELPARAM_VALUE.C0_tWTR}
}

proc update_MODELPARAM_VALUE.C0_tWTR_L { MODELPARAM_VALUE.C0_tWTR_L PARAM_VALUE.C0_tWTR_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tWTR_L}] ${MODELPARAM_VALUE.C0_tWTR_L}
}

proc update_MODELPARAM_VALUE.C0_tWTR_S { MODELPARAM_VALUE.C0_tWTR_S PARAM_VALUE.C0_tWTR_S } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tWTR_S}] ${MODELPARAM_VALUE.C0_tWTR_S}
}

proc update_MODELPARAM_VALUE.C0_tXPR { MODELPARAM_VALUE.C0_tXPR PARAM_VALUE.C0_tXPR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tXPR}] ${MODELPARAM_VALUE.C0_tXPR}
}

proc update_MODELPARAM_VALUE.C0_tZQCS { MODELPARAM_VALUE.C0_tZQCS PARAM_VALUE.C0_tZQCS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tZQCS}] ${MODELPARAM_VALUE.C0_tZQCS}
}

proc update_MODELPARAM_VALUE.C0_tZQI { MODELPARAM_VALUE.C0_tZQI PARAM_VALUE.C0_tZQI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tZQI}] ${MODELPARAM_VALUE.C0_tZQI}
}

proc update_MODELPARAM_VALUE.C0_tZQINIT { MODELPARAM_VALUE.C0_tZQINIT PARAM_VALUE.C0_tZQINIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_tZQINIT}] ${MODELPARAM_VALUE.C0_tZQINIT}
}

proc update_MODELPARAM_VALUE.C0_AutoPrecharge { MODELPARAM_VALUE.C0_AutoPrecharge PARAM_VALUE.C0_AutoPrecharge } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_AutoPrecharge}] ${MODELPARAM_VALUE.C0_AutoPrecharge}
}

proc update_MODELPARAM_VALUE.C0_AxiNarrowBurst { MODELPARAM_VALUE.C0_AxiNarrowBurst PARAM_VALUE.C0_AxiNarrowBurst } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_AxiNarrowBurst}] ${MODELPARAM_VALUE.C0_AxiNarrowBurst}
}

proc update_MODELPARAM_VALUE.C0_BURST_LENGTH { MODELPARAM_VALUE.C0_BURST_LENGTH PARAM_VALUE.C0_BURST_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_BURST_LENGTH}] ${MODELPARAM_VALUE.C0_BURST_LENGTH}
}

proc update_MODELPARAM_VALUE.C0_CAS_LATENCY { MODELPARAM_VALUE.C0_CAS_LATENCY PARAM_VALUE.C0_CAS_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_CAS_LATENCY}] ${MODELPARAM_VALUE.C0_CAS_LATENCY}
}

proc update_MODELPARAM_VALUE.C0_CAS_WRITE_LATENCY { MODELPARAM_VALUE.C0_CAS_WRITE_LATENCY PARAM_VALUE.C0_CAS_WRITE_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_CAS_WRITE_LATENCY}] ${MODELPARAM_VALUE.C0_CAS_WRITE_LATENCY}
}

proc update_MODELPARAM_VALUE.C0_DATA_WIDTH { MODELPARAM_VALUE.C0_DATA_WIDTH PARAM_VALUE.C0_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_DATA_WIDTH}] ${MODELPARAM_VALUE.C0_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C0_MEMORY_PART { MODELPARAM_VALUE.C0_MEMORY_PART PARAM_VALUE.C0_MEMORY_PART } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_MEMORY_PART}] ${MODELPARAM_VALUE.C0_MEMORY_PART}
}

proc update_MODELPARAM_VALUE.C0_MEM_ADDR_MAP { MODELPARAM_VALUE.C0_MEM_ADDR_MAP PARAM_VALUE.C0_MEM_ADDR_MAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_MEM_ADDR_MAP}] ${MODELPARAM_VALUE.C0_MEM_ADDR_MAP}
}

proc update_MODELPARAM_VALUE.C0_TIMEPERIOD_PS { MODELPARAM_VALUE.C0_TIMEPERIOD_PS PARAM_VALUE.C0_TIMEPERIOD_PS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_TIMEPERIOD_PS}] ${MODELPARAM_VALUE.C0_TIMEPERIOD_PS}
}

proc update_MODELPARAM_VALUE.C0_A00_BASE_ADDR { MODELPARAM_VALUE.C0_A00_BASE_ADDR PARAM_VALUE.C0_A00_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A00_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A00_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A01_BASE_ADDR { MODELPARAM_VALUE.C0_A01_BASE_ADDR PARAM_VALUE.C0_A01_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A01_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A01_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A02_BASE_ADDR { MODELPARAM_VALUE.C0_A02_BASE_ADDR PARAM_VALUE.C0_A02_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A02_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A02_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A03_BASE_ADDR { MODELPARAM_VALUE.C0_A03_BASE_ADDR PARAM_VALUE.C0_A03_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A03_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A03_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A04_BASE_ADDR { MODELPARAM_VALUE.C0_A04_BASE_ADDR PARAM_VALUE.C0_A04_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A04_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A04_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A05_BASE_ADDR { MODELPARAM_VALUE.C0_A05_BASE_ADDR PARAM_VALUE.C0_A05_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A05_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A05_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A06_BASE_ADDR { MODELPARAM_VALUE.C0_A06_BASE_ADDR PARAM_VALUE.C0_A06_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A06_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A06_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A07_BASE_ADDR { MODELPARAM_VALUE.C0_A07_BASE_ADDR PARAM_VALUE.C0_A07_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A07_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A07_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A08_BASE_ADDR { MODELPARAM_VALUE.C0_A08_BASE_ADDR PARAM_VALUE.C0_A08_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A08_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A08_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A09_BASE_ADDR { MODELPARAM_VALUE.C0_A09_BASE_ADDR PARAM_VALUE.C0_A09_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A09_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A09_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A10_BASE_ADDR { MODELPARAM_VALUE.C0_A10_BASE_ADDR PARAM_VALUE.C0_A10_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A10_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A10_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A11_BASE_ADDR { MODELPARAM_VALUE.C0_A11_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C0_A11_BASE_ADDR". Setting updated value from the model parameter.
set_property value 0xFFFFFFFFFFFFFFFF ${MODELPARAM_VALUE.C0_A11_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A12_BASE_ADDR { MODELPARAM_VALUE.C0_A12_BASE_ADDR PARAM_VALUE.C0_A12_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A12_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A12_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A13_BASE_ADDR { MODELPARAM_VALUE.C0_A13_BASE_ADDR PARAM_VALUE.C0_A13_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A13_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A13_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A14_BASE_ADDR { MODELPARAM_VALUE.C0_A14_BASE_ADDR PARAM_VALUE.C0_A14_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A14_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A14_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A15_BASE_ADDR { MODELPARAM_VALUE.C0_A15_BASE_ADDR PARAM_VALUE.C0_A15_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A15_BASE_ADDR}] ${MODELPARAM_VALUE.C0_A15_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A00_HIGH_ADDR { MODELPARAM_VALUE.C0_A00_HIGH_ADDR PARAM_VALUE.C0_A00_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A00_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A00_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A01_HIGH_ADDR { MODELPARAM_VALUE.C0_A01_HIGH_ADDR PARAM_VALUE.C0_A01_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A01_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A01_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A02_HIGH_ADDR { MODELPARAM_VALUE.C0_A02_HIGH_ADDR PARAM_VALUE.C0_A02_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A02_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A02_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A03_HIGH_ADDR { MODELPARAM_VALUE.C0_A03_HIGH_ADDR PARAM_VALUE.C0_A03_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A03_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A03_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A04_HIGH_ADDR { MODELPARAM_VALUE.C0_A04_HIGH_ADDR PARAM_VALUE.C0_A04_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A04_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A04_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A05_HIGH_ADDR { MODELPARAM_VALUE.C0_A05_HIGH_ADDR PARAM_VALUE.C0_A05_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A05_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A05_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A06_HIGH_ADDR { MODELPARAM_VALUE.C0_A06_HIGH_ADDR PARAM_VALUE.C0_A06_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A06_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A06_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A07_HIGH_ADDR { MODELPARAM_VALUE.C0_A07_HIGH_ADDR PARAM_VALUE.C0_A07_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A07_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A07_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A08_HIGH_ADDR { MODELPARAM_VALUE.C0_A08_HIGH_ADDR PARAM_VALUE.C0_A08_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A08_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A08_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A09_HIGH_ADDR { MODELPARAM_VALUE.C0_A09_HIGH_ADDR PARAM_VALUE.C0_A09_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A09_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A09_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A10_HIGH_ADDR { MODELPARAM_VALUE.C0_A10_HIGH_ADDR PARAM_VALUE.C0_A10_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A10_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A10_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A11_HIGH_ADDR { MODELPARAM_VALUE.C0_A11_HIGH_ADDR PARAM_VALUE.C0_A11_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A11_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A11_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A12_HIGH_ADDR { MODELPARAM_VALUE.C0_A12_HIGH_ADDR PARAM_VALUE.C0_A12_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A12_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A12_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A13_HIGH_ADDR { MODELPARAM_VALUE.C0_A13_HIGH_ADDR PARAM_VALUE.C0_A13_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A13_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A13_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A14_HIGH_ADDR { MODELPARAM_VALUE.C0_A14_HIGH_ADDR PARAM_VALUE.C0_A14_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A14_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A14_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C0_A15_HIGH_ADDR { MODELPARAM_VALUE.C0_A15_HIGH_ADDR PARAM_VALUE.C0_A15_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C0_A15_HIGH_ADDR}] ${MODELPARAM_VALUE.C0_A15_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_NAME { MODELPARAM_VALUE.C1_NAME PARAM_VALUE.C1_NAME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_NAME}] ${MODELPARAM_VALUE.C1_NAME}
}

proc update_MODELPARAM_VALUE.C1_TYPE { MODELPARAM_VALUE.C1_TYPE PARAM_VALUE.C1_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_TYPE}] ${MODELPARAM_VALUE.C1_TYPE}
}

proc update_MODELPARAM_VALUE.C1_SIZE { MODELPARAM_VALUE.C1_SIZE PARAM_VALUE.C1_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_SIZE}] ${MODELPARAM_VALUE.C1_SIZE}
}

proc update_MODELPARAM_VALUE.C1_AXI_ARBITRATION_SCHEME { MODELPARAM_VALUE.C1_AXI_ARBITRATION_SCHEME PARAM_VALUE.C1_AXI_ARBITRATION_SCHEME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_AXI_ARBITRATION_SCHEME}] ${MODELPARAM_VALUE.C1_AXI_ARBITRATION_SCHEME}
}

proc update_MODELPARAM_VALUE.C1_ControllerType { MODELPARAM_VALUE.C1_ControllerType PARAM_VALUE.C1_ControllerType } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_ControllerType}] ${MODELPARAM_VALUE.C1_ControllerType}
}

proc update_MODELPARAM_VALUE.C1_APP_ADDR_WIDTH { MODELPARAM_VALUE.C1_APP_ADDR_WIDTH PARAM_VALUE.C1_APP_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_APP_ADDR_WIDTH}] ${MODELPARAM_VALUE.C1_APP_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_APP_DATA_WIDTH { MODELPARAM_VALUE.C1_APP_DATA_WIDTH PARAM_VALUE.C1_APP_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_APP_DATA_WIDTH}] ${MODELPARAM_VALUE.C1_APP_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_Mem_Add_Map { MODELPARAM_VALUE.C1_Mem_Add_Map PARAM_VALUE.C1_Mem_Add_Map } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_Mem_Add_Map}] ${MODELPARAM_VALUE.C1_Mem_Add_Map}
}

proc update_MODELPARAM_VALUE.C1_Ordering { MODELPARAM_VALUE.C1_Ordering PARAM_VALUE.C1_Ordering } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_Ordering}] ${MODELPARAM_VALUE.C1_Ordering}
}

proc update_MODELPARAM_VALUE.C1_ADDR_WIDTH { MODELPARAM_VALUE.C1_ADDR_WIDTH PARAM_VALUE.C1_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_ADDR_WIDTH}] ${MODELPARAM_VALUE.C1_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C1_AXI_ADDR_WIDTH PARAM_VALUE.C1_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C1_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_AXI_DATA_WIDTH { MODELPARAM_VALUE.C1_AXI_DATA_WIDTH PARAM_VALUE.C1_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C1_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_AXI_ID_WIDTH { MODELPARAM_VALUE.C1_AXI_ID_WIDTH PARAM_VALUE.C1_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C1_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_BANK_GROUP_WIDTH { MODELPARAM_VALUE.C1_BANK_GROUP_WIDTH PARAM_VALUE.C1_BANK_GROUP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_BANK_GROUP_WIDTH}] ${MODELPARAM_VALUE.C1_BANK_GROUP_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_BANK_WIDTH { MODELPARAM_VALUE.C1_BANK_WIDTH PARAM_VALUE.C1_BANK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_BANK_WIDTH}] ${MODELPARAM_VALUE.C1_BANK_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_CL { MODELPARAM_VALUE.C1_CL PARAM_VALUE.C1_CL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_CL}] ${MODELPARAM_VALUE.C1_CL}
}

proc update_MODELPARAM_VALUE.C1_COLUMN_WIDTH { MODELPARAM_VALUE.C1_COLUMN_WIDTH PARAM_VALUE.C1_COLUMN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_COLUMN_WIDTH}] ${MODELPARAM_VALUE.C1_COLUMN_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_CWL { MODELPARAM_VALUE.C1_CWL PARAM_VALUE.C1_CWL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_CWL}] ${MODELPARAM_VALUE.C1_CWL}
}

proc update_MODELPARAM_VALUE.C1_RANK_WIDTH { MODELPARAM_VALUE.C1_RANK_WIDTH PARAM_VALUE.C1_RANK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_RANK_WIDTH}] ${MODELPARAM_VALUE.C1_RANK_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_ROW_WIDTH { MODELPARAM_VALUE.C1_ROW_WIDTH PARAM_VALUE.C1_ROW_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_ROW_WIDTH}] ${MODELPARAM_VALUE.C1_ROW_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_tCK { MODELPARAM_VALUE.C1_tCK PARAM_VALUE.C1_tCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tCK}] ${MODELPARAM_VALUE.C1_tCK}
}

proc update_MODELPARAM_VALUE.C1_tCKE { MODELPARAM_VALUE.C1_tCKE PARAM_VALUE.C1_tCKE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tCKE}] ${MODELPARAM_VALUE.C1_tCKE}
}

proc update_MODELPARAM_VALUE.C1_tFAW { MODELPARAM_VALUE.C1_tFAW PARAM_VALUE.C1_tFAW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tFAW}] ${MODELPARAM_VALUE.C1_tFAW}
}

proc update_MODELPARAM_VALUE.C1_tMRD { MODELPARAM_VALUE.C1_tMRD PARAM_VALUE.C1_tMRD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tMRD}] ${MODELPARAM_VALUE.C1_tMRD}
}

proc update_MODELPARAM_VALUE.C1_tRAS { MODELPARAM_VALUE.C1_tRAS PARAM_VALUE.C1_tRAS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tRAS}] ${MODELPARAM_VALUE.C1_tRAS}
}

proc update_MODELPARAM_VALUE.C1_tRCD { MODELPARAM_VALUE.C1_tRCD PARAM_VALUE.C1_tRCD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tRCD}] ${MODELPARAM_VALUE.C1_tRCD}
}

proc update_MODELPARAM_VALUE.C1_tREFI { MODELPARAM_VALUE.C1_tREFI PARAM_VALUE.C1_tREFI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tREFI}] ${MODELPARAM_VALUE.C1_tREFI}
}

proc update_MODELPARAM_VALUE.C1_tRFC { MODELPARAM_VALUE.C1_tRFC PARAM_VALUE.C1_tRFC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tRFC}] ${MODELPARAM_VALUE.C1_tRFC}
}

proc update_MODELPARAM_VALUE.C1_tRP { MODELPARAM_VALUE.C1_tRP PARAM_VALUE.C1_tRP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tRP}] ${MODELPARAM_VALUE.C1_tRP}
}

proc update_MODELPARAM_VALUE.C1_tRTW { MODELPARAM_VALUE.C1_tRTW PARAM_VALUE.C1_tRTW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tRTW}] ${MODELPARAM_VALUE.C1_tRTW}
}

proc update_MODELPARAM_VALUE.C1_tCCD { MODELPARAM_VALUE.C1_tCCD PARAM_VALUE.C1_tCCD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tCCD}] ${MODELPARAM_VALUE.C1_tCCD}
}

proc update_MODELPARAM_VALUE.C1_tRRD { MODELPARAM_VALUE.C1_tRRD PARAM_VALUE.C1_tRRD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tRRD}] ${MODELPARAM_VALUE.C1_tRRD}
}

proc update_MODELPARAM_VALUE.C1_tRRD_L { MODELPARAM_VALUE.C1_tRRD_L PARAM_VALUE.C1_tRRD_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tRRD_L}] ${MODELPARAM_VALUE.C1_tRRD_L}
}

proc update_MODELPARAM_VALUE.C1_tRRD_S { MODELPARAM_VALUE.C1_tRRD_S PARAM_VALUE.C1_tRRD_S } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tRRD_S}] ${MODELPARAM_VALUE.C1_tRRD_S}
}

proc update_MODELPARAM_VALUE.C1_tRTP { MODELPARAM_VALUE.C1_tRTP PARAM_VALUE.C1_tRTP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tRTP}] ${MODELPARAM_VALUE.C1_tRTP}
}

proc update_MODELPARAM_VALUE.C1_tWR { MODELPARAM_VALUE.C1_tWR PARAM_VALUE.C1_tWR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tWR}] ${MODELPARAM_VALUE.C1_tWR}
}

proc update_MODELPARAM_VALUE.C1_tWTR { MODELPARAM_VALUE.C1_tWTR PARAM_VALUE.C1_tWTR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tWTR}] ${MODELPARAM_VALUE.C1_tWTR}
}

proc update_MODELPARAM_VALUE.C1_tWTR_L { MODELPARAM_VALUE.C1_tWTR_L PARAM_VALUE.C1_tWTR_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tWTR_L}] ${MODELPARAM_VALUE.C1_tWTR_L}
}

proc update_MODELPARAM_VALUE.C1_tWTR_S { MODELPARAM_VALUE.C1_tWTR_S PARAM_VALUE.C1_tWTR_S } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tWTR_S}] ${MODELPARAM_VALUE.C1_tWTR_S}
}

proc update_MODELPARAM_VALUE.C1_tXPR { MODELPARAM_VALUE.C1_tXPR PARAM_VALUE.C1_tXPR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tXPR}] ${MODELPARAM_VALUE.C1_tXPR}
}

proc update_MODELPARAM_VALUE.C1_tZQCS { MODELPARAM_VALUE.C1_tZQCS PARAM_VALUE.C1_tZQCS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tZQCS}] ${MODELPARAM_VALUE.C1_tZQCS}
}

proc update_MODELPARAM_VALUE.C1_tZQI { MODELPARAM_VALUE.C1_tZQI PARAM_VALUE.C1_tZQI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tZQI}] ${MODELPARAM_VALUE.C1_tZQI}
}

proc update_MODELPARAM_VALUE.C1_tZQINIT { MODELPARAM_VALUE.C1_tZQINIT PARAM_VALUE.C1_tZQINIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_tZQINIT}] ${MODELPARAM_VALUE.C1_tZQINIT}
}

proc update_MODELPARAM_VALUE.C1_AutoPrecharge { MODELPARAM_VALUE.C1_AutoPrecharge PARAM_VALUE.C1_AutoPrecharge } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_AutoPrecharge}] ${MODELPARAM_VALUE.C1_AutoPrecharge}
}

proc update_MODELPARAM_VALUE.C1_AxiNarrowBurst { MODELPARAM_VALUE.C1_AxiNarrowBurst PARAM_VALUE.C1_AxiNarrowBurst } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_AxiNarrowBurst}] ${MODELPARAM_VALUE.C1_AxiNarrowBurst}
}

proc update_MODELPARAM_VALUE.C1_BURST_LENGTH { MODELPARAM_VALUE.C1_BURST_LENGTH PARAM_VALUE.C1_BURST_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_BURST_LENGTH}] ${MODELPARAM_VALUE.C1_BURST_LENGTH}
}

proc update_MODELPARAM_VALUE.C1_CAS_LATENCY { MODELPARAM_VALUE.C1_CAS_LATENCY PARAM_VALUE.C1_CAS_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_CAS_LATENCY}] ${MODELPARAM_VALUE.C1_CAS_LATENCY}
}

proc update_MODELPARAM_VALUE.C1_CAS_WRITE_LATENCY { MODELPARAM_VALUE.C1_CAS_WRITE_LATENCY PARAM_VALUE.C1_CAS_WRITE_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_CAS_WRITE_LATENCY}] ${MODELPARAM_VALUE.C1_CAS_WRITE_LATENCY}
}

proc update_MODELPARAM_VALUE.C1_DATA_WIDTH { MODELPARAM_VALUE.C1_DATA_WIDTH PARAM_VALUE.C1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_DATA_WIDTH}] ${MODELPARAM_VALUE.C1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C1_MEMORY_PART { MODELPARAM_VALUE.C1_MEMORY_PART PARAM_VALUE.C1_MEMORY_PART } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_MEMORY_PART}] ${MODELPARAM_VALUE.C1_MEMORY_PART}
}

proc update_MODELPARAM_VALUE.C1_MEM_ADDR_MAP { MODELPARAM_VALUE.C1_MEM_ADDR_MAP PARAM_VALUE.C1_MEM_ADDR_MAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_MEM_ADDR_MAP}] ${MODELPARAM_VALUE.C1_MEM_ADDR_MAP}
}

proc update_MODELPARAM_VALUE.C1_TIMEPERIOD_PS { MODELPARAM_VALUE.C1_TIMEPERIOD_PS PARAM_VALUE.C1_TIMEPERIOD_PS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_TIMEPERIOD_PS}] ${MODELPARAM_VALUE.C1_TIMEPERIOD_PS}
}

proc update_MODELPARAM_VALUE.C1_A00_BASE_ADDR { MODELPARAM_VALUE.C1_A00_BASE_ADDR PARAM_VALUE.C1_A00_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A00_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A00_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A01_BASE_ADDR { MODELPARAM_VALUE.C1_A01_BASE_ADDR PARAM_VALUE.C1_A01_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A01_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A01_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A02_BASE_ADDR { MODELPARAM_VALUE.C1_A02_BASE_ADDR PARAM_VALUE.C1_A02_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A02_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A02_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A03_BASE_ADDR { MODELPARAM_VALUE.C1_A03_BASE_ADDR PARAM_VALUE.C1_A03_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A03_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A03_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A04_BASE_ADDR { MODELPARAM_VALUE.C1_A04_BASE_ADDR PARAM_VALUE.C1_A04_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A04_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A04_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A05_BASE_ADDR { MODELPARAM_VALUE.C1_A05_BASE_ADDR PARAM_VALUE.C1_A05_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A05_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A05_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A06_BASE_ADDR { MODELPARAM_VALUE.C1_A06_BASE_ADDR PARAM_VALUE.C1_A06_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A06_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A06_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A07_BASE_ADDR { MODELPARAM_VALUE.C1_A07_BASE_ADDR PARAM_VALUE.C1_A07_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A07_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A07_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A08_BASE_ADDR { MODELPARAM_VALUE.C1_A08_BASE_ADDR PARAM_VALUE.C1_A08_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A08_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A08_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A09_BASE_ADDR { MODELPARAM_VALUE.C1_A09_BASE_ADDR PARAM_VALUE.C1_A09_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A09_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A09_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A10_BASE_ADDR { MODELPARAM_VALUE.C1_A10_BASE_ADDR PARAM_VALUE.C1_A10_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A10_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A10_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A11_BASE_ADDR { MODELPARAM_VALUE.C1_A11_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C1_A11_BASE_ADDR". Setting updated value from the model parameter.
set_property value 0xFFFFFFFFFFFFFFFF ${MODELPARAM_VALUE.C1_A11_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A12_BASE_ADDR { MODELPARAM_VALUE.C1_A12_BASE_ADDR PARAM_VALUE.C1_A12_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A12_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A12_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A13_BASE_ADDR { MODELPARAM_VALUE.C1_A13_BASE_ADDR PARAM_VALUE.C1_A13_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A13_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A13_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A14_BASE_ADDR { MODELPARAM_VALUE.C1_A14_BASE_ADDR PARAM_VALUE.C1_A14_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A14_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A14_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A15_BASE_ADDR { MODELPARAM_VALUE.C1_A15_BASE_ADDR PARAM_VALUE.C1_A15_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A15_BASE_ADDR}] ${MODELPARAM_VALUE.C1_A15_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A00_HIGH_ADDR { MODELPARAM_VALUE.C1_A00_HIGH_ADDR PARAM_VALUE.C1_A00_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A00_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A00_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A01_HIGH_ADDR { MODELPARAM_VALUE.C1_A01_HIGH_ADDR PARAM_VALUE.C1_A01_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A01_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A01_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A02_HIGH_ADDR { MODELPARAM_VALUE.C1_A02_HIGH_ADDR PARAM_VALUE.C1_A02_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A02_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A02_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A03_HIGH_ADDR { MODELPARAM_VALUE.C1_A03_HIGH_ADDR PARAM_VALUE.C1_A03_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A03_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A03_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A04_HIGH_ADDR { MODELPARAM_VALUE.C1_A04_HIGH_ADDR PARAM_VALUE.C1_A04_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A04_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A04_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A05_HIGH_ADDR { MODELPARAM_VALUE.C1_A05_HIGH_ADDR PARAM_VALUE.C1_A05_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A05_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A05_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A06_HIGH_ADDR { MODELPARAM_VALUE.C1_A06_HIGH_ADDR PARAM_VALUE.C1_A06_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A06_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A06_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A07_HIGH_ADDR { MODELPARAM_VALUE.C1_A07_HIGH_ADDR PARAM_VALUE.C1_A07_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A07_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A07_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A08_HIGH_ADDR { MODELPARAM_VALUE.C1_A08_HIGH_ADDR PARAM_VALUE.C1_A08_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A08_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A08_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A09_HIGH_ADDR { MODELPARAM_VALUE.C1_A09_HIGH_ADDR PARAM_VALUE.C1_A09_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A09_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A09_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A10_HIGH_ADDR { MODELPARAM_VALUE.C1_A10_HIGH_ADDR PARAM_VALUE.C1_A10_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A10_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A10_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A11_HIGH_ADDR { MODELPARAM_VALUE.C1_A11_HIGH_ADDR PARAM_VALUE.C1_A11_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A11_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A11_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A12_HIGH_ADDR { MODELPARAM_VALUE.C1_A12_HIGH_ADDR PARAM_VALUE.C1_A12_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A12_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A12_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A13_HIGH_ADDR { MODELPARAM_VALUE.C1_A13_HIGH_ADDR PARAM_VALUE.C1_A13_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A13_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A13_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A14_HIGH_ADDR { MODELPARAM_VALUE.C1_A14_HIGH_ADDR PARAM_VALUE.C1_A14_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A14_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A14_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C1_A15_HIGH_ADDR { MODELPARAM_VALUE.C1_A15_HIGH_ADDR PARAM_VALUE.C1_A15_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C1_A15_HIGH_ADDR}] ${MODELPARAM_VALUE.C1_A15_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_NAME { MODELPARAM_VALUE.C2_NAME PARAM_VALUE.C2_NAME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_NAME}] ${MODELPARAM_VALUE.C2_NAME}
}

proc update_MODELPARAM_VALUE.C2_TYPE { MODELPARAM_VALUE.C2_TYPE PARAM_VALUE.C2_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_TYPE}] ${MODELPARAM_VALUE.C2_TYPE}
}

proc update_MODELPARAM_VALUE.C2_SIZE { MODELPARAM_VALUE.C2_SIZE PARAM_VALUE.C2_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_SIZE}] ${MODELPARAM_VALUE.C2_SIZE}
}

proc update_MODELPARAM_VALUE.C2_AXI_ARBITRATION_SCHEME { MODELPARAM_VALUE.C2_AXI_ARBITRATION_SCHEME PARAM_VALUE.C2_AXI_ARBITRATION_SCHEME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_AXI_ARBITRATION_SCHEME}] ${MODELPARAM_VALUE.C2_AXI_ARBITRATION_SCHEME}
}

proc update_MODELPARAM_VALUE.C2_ControllerType { MODELPARAM_VALUE.C2_ControllerType PARAM_VALUE.C2_ControllerType } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_ControllerType}] ${MODELPARAM_VALUE.C2_ControllerType}
}

proc update_MODELPARAM_VALUE.C2_APP_ADDR_WIDTH { MODELPARAM_VALUE.C2_APP_ADDR_WIDTH PARAM_VALUE.C2_APP_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_APP_ADDR_WIDTH}] ${MODELPARAM_VALUE.C2_APP_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_APP_DATA_WIDTH { MODELPARAM_VALUE.C2_APP_DATA_WIDTH PARAM_VALUE.C2_APP_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_APP_DATA_WIDTH}] ${MODELPARAM_VALUE.C2_APP_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_Mem_Add_Map { MODELPARAM_VALUE.C2_Mem_Add_Map PARAM_VALUE.C2_Mem_Add_Map } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_Mem_Add_Map}] ${MODELPARAM_VALUE.C2_Mem_Add_Map}
}

proc update_MODELPARAM_VALUE.C2_Ordering { MODELPARAM_VALUE.C2_Ordering PARAM_VALUE.C2_Ordering } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_Ordering}] ${MODELPARAM_VALUE.C2_Ordering}
}

proc update_MODELPARAM_VALUE.C2_ADDR_WIDTH { MODELPARAM_VALUE.C2_ADDR_WIDTH PARAM_VALUE.C2_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_ADDR_WIDTH}] ${MODELPARAM_VALUE.C2_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C2_AXI_ADDR_WIDTH PARAM_VALUE.C2_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C2_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_AXI_DATA_WIDTH { MODELPARAM_VALUE.C2_AXI_DATA_WIDTH PARAM_VALUE.C2_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C2_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_AXI_ID_WIDTH { MODELPARAM_VALUE.C2_AXI_ID_WIDTH PARAM_VALUE.C2_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C2_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_BANK_GROUP_WIDTH { MODELPARAM_VALUE.C2_BANK_GROUP_WIDTH PARAM_VALUE.C2_BANK_GROUP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_BANK_GROUP_WIDTH}] ${MODELPARAM_VALUE.C2_BANK_GROUP_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_BANK_WIDTH { MODELPARAM_VALUE.C2_BANK_WIDTH PARAM_VALUE.C2_BANK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_BANK_WIDTH}] ${MODELPARAM_VALUE.C2_BANK_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_CL { MODELPARAM_VALUE.C2_CL PARAM_VALUE.C2_CL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_CL}] ${MODELPARAM_VALUE.C2_CL}
}

proc update_MODELPARAM_VALUE.C2_COLUMN_WIDTH { MODELPARAM_VALUE.C2_COLUMN_WIDTH PARAM_VALUE.C2_COLUMN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_COLUMN_WIDTH}] ${MODELPARAM_VALUE.C2_COLUMN_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_CWL { MODELPARAM_VALUE.C2_CWL PARAM_VALUE.C2_CWL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_CWL}] ${MODELPARAM_VALUE.C2_CWL}
}

proc update_MODELPARAM_VALUE.C2_RANK_WIDTH { MODELPARAM_VALUE.C2_RANK_WIDTH PARAM_VALUE.C2_RANK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_RANK_WIDTH}] ${MODELPARAM_VALUE.C2_RANK_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_ROW_WIDTH { MODELPARAM_VALUE.C2_ROW_WIDTH PARAM_VALUE.C2_ROW_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_ROW_WIDTH}] ${MODELPARAM_VALUE.C2_ROW_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_tCK { MODELPARAM_VALUE.C2_tCK PARAM_VALUE.C2_tCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tCK}] ${MODELPARAM_VALUE.C2_tCK}
}

proc update_MODELPARAM_VALUE.C2_tCKE { MODELPARAM_VALUE.C2_tCKE PARAM_VALUE.C2_tCKE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tCKE}] ${MODELPARAM_VALUE.C2_tCKE}
}

proc update_MODELPARAM_VALUE.C2_tFAW { MODELPARAM_VALUE.C2_tFAW PARAM_VALUE.C2_tFAW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tFAW}] ${MODELPARAM_VALUE.C2_tFAW}
}

proc update_MODELPARAM_VALUE.C2_tMRD { MODELPARAM_VALUE.C2_tMRD PARAM_VALUE.C2_tMRD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tMRD}] ${MODELPARAM_VALUE.C2_tMRD}
}

proc update_MODELPARAM_VALUE.C2_tRAS { MODELPARAM_VALUE.C2_tRAS PARAM_VALUE.C2_tRAS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tRAS}] ${MODELPARAM_VALUE.C2_tRAS}
}

proc update_MODELPARAM_VALUE.C2_tRCD { MODELPARAM_VALUE.C2_tRCD PARAM_VALUE.C2_tRCD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tRCD}] ${MODELPARAM_VALUE.C2_tRCD}
}

proc update_MODELPARAM_VALUE.C2_tREFI { MODELPARAM_VALUE.C2_tREFI PARAM_VALUE.C2_tREFI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tREFI}] ${MODELPARAM_VALUE.C2_tREFI}
}

proc update_MODELPARAM_VALUE.C2_tRFC { MODELPARAM_VALUE.C2_tRFC PARAM_VALUE.C2_tRFC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tRFC}] ${MODELPARAM_VALUE.C2_tRFC}
}

proc update_MODELPARAM_VALUE.C2_tRP { MODELPARAM_VALUE.C2_tRP PARAM_VALUE.C2_tRP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tRP}] ${MODELPARAM_VALUE.C2_tRP}
}

proc update_MODELPARAM_VALUE.C2_tRTW { MODELPARAM_VALUE.C2_tRTW PARAM_VALUE.C2_tRTW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tRTW}] ${MODELPARAM_VALUE.C2_tRTW}
}

proc update_MODELPARAM_VALUE.C2_tCCD { MODELPARAM_VALUE.C2_tCCD PARAM_VALUE.C2_tCCD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tCCD}] ${MODELPARAM_VALUE.C2_tCCD}
}

proc update_MODELPARAM_VALUE.C2_tRRD { MODELPARAM_VALUE.C2_tRRD PARAM_VALUE.C2_tRRD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tRRD}] ${MODELPARAM_VALUE.C2_tRRD}
}

proc update_MODELPARAM_VALUE.C2_tRRD_L { MODELPARAM_VALUE.C2_tRRD_L PARAM_VALUE.C2_tRRD_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tRRD_L}] ${MODELPARAM_VALUE.C2_tRRD_L}
}

proc update_MODELPARAM_VALUE.C2_tRRD_S { MODELPARAM_VALUE.C2_tRRD_S PARAM_VALUE.C2_tRRD_S } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tRRD_S}] ${MODELPARAM_VALUE.C2_tRRD_S}
}

proc update_MODELPARAM_VALUE.C2_tRTP { MODELPARAM_VALUE.C2_tRTP PARAM_VALUE.C2_tRTP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tRTP}] ${MODELPARAM_VALUE.C2_tRTP}
}

proc update_MODELPARAM_VALUE.C2_tWR { MODELPARAM_VALUE.C2_tWR PARAM_VALUE.C2_tWR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tWR}] ${MODELPARAM_VALUE.C2_tWR}
}

proc update_MODELPARAM_VALUE.C2_tWTR { MODELPARAM_VALUE.C2_tWTR PARAM_VALUE.C2_tWTR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tWTR}] ${MODELPARAM_VALUE.C2_tWTR}
}

proc update_MODELPARAM_VALUE.C2_tWTR_L { MODELPARAM_VALUE.C2_tWTR_L PARAM_VALUE.C2_tWTR_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tWTR_L}] ${MODELPARAM_VALUE.C2_tWTR_L}
}

proc update_MODELPARAM_VALUE.C2_tWTR_S { MODELPARAM_VALUE.C2_tWTR_S PARAM_VALUE.C2_tWTR_S } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tWTR_S}] ${MODELPARAM_VALUE.C2_tWTR_S}
}

proc update_MODELPARAM_VALUE.C2_tXPR { MODELPARAM_VALUE.C2_tXPR PARAM_VALUE.C2_tXPR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tXPR}] ${MODELPARAM_VALUE.C2_tXPR}
}

proc update_MODELPARAM_VALUE.C2_tZQCS { MODELPARAM_VALUE.C2_tZQCS PARAM_VALUE.C2_tZQCS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tZQCS}] ${MODELPARAM_VALUE.C2_tZQCS}
}

proc update_MODELPARAM_VALUE.C2_tZQI { MODELPARAM_VALUE.C2_tZQI PARAM_VALUE.C2_tZQI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tZQI}] ${MODELPARAM_VALUE.C2_tZQI}
}

proc update_MODELPARAM_VALUE.C2_tZQINIT { MODELPARAM_VALUE.C2_tZQINIT PARAM_VALUE.C2_tZQINIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_tZQINIT}] ${MODELPARAM_VALUE.C2_tZQINIT}
}

proc update_MODELPARAM_VALUE.C2_AutoPrecharge { MODELPARAM_VALUE.C2_AutoPrecharge PARAM_VALUE.C2_AutoPrecharge } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_AutoPrecharge}] ${MODELPARAM_VALUE.C2_AutoPrecharge}
}

proc update_MODELPARAM_VALUE.C2_AxiNarrowBurst { MODELPARAM_VALUE.C2_AxiNarrowBurst PARAM_VALUE.C2_AxiNarrowBurst } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_AxiNarrowBurst}] ${MODELPARAM_VALUE.C2_AxiNarrowBurst}
}

proc update_MODELPARAM_VALUE.C2_BURST_LENGTH { MODELPARAM_VALUE.C2_BURST_LENGTH PARAM_VALUE.C2_BURST_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_BURST_LENGTH}] ${MODELPARAM_VALUE.C2_BURST_LENGTH}
}

proc update_MODELPARAM_VALUE.C2_CAS_LATENCY { MODELPARAM_VALUE.C2_CAS_LATENCY PARAM_VALUE.C2_CAS_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_CAS_LATENCY}] ${MODELPARAM_VALUE.C2_CAS_LATENCY}
}

proc update_MODELPARAM_VALUE.C2_CAS_WRITE_LATENCY { MODELPARAM_VALUE.C2_CAS_WRITE_LATENCY PARAM_VALUE.C2_CAS_WRITE_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_CAS_WRITE_LATENCY}] ${MODELPARAM_VALUE.C2_CAS_WRITE_LATENCY}
}

proc update_MODELPARAM_VALUE.C2_DATA_WIDTH { MODELPARAM_VALUE.C2_DATA_WIDTH PARAM_VALUE.C2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_DATA_WIDTH}] ${MODELPARAM_VALUE.C2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C2_MEMORY_PART { MODELPARAM_VALUE.C2_MEMORY_PART PARAM_VALUE.C2_MEMORY_PART } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_MEMORY_PART}] ${MODELPARAM_VALUE.C2_MEMORY_PART}
}

proc update_MODELPARAM_VALUE.C2_MEM_ADDR_MAP { MODELPARAM_VALUE.C2_MEM_ADDR_MAP PARAM_VALUE.C2_MEM_ADDR_MAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_MEM_ADDR_MAP}] ${MODELPARAM_VALUE.C2_MEM_ADDR_MAP}
}

proc update_MODELPARAM_VALUE.C2_TIMEPERIOD_PS { MODELPARAM_VALUE.C2_TIMEPERIOD_PS PARAM_VALUE.C2_TIMEPERIOD_PS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_TIMEPERIOD_PS}] ${MODELPARAM_VALUE.C2_TIMEPERIOD_PS}
}

proc update_MODELPARAM_VALUE.C2_A00_BASE_ADDR { MODELPARAM_VALUE.C2_A00_BASE_ADDR PARAM_VALUE.C2_A00_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A00_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A00_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A01_BASE_ADDR { MODELPARAM_VALUE.C2_A01_BASE_ADDR PARAM_VALUE.C2_A01_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A01_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A01_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A02_BASE_ADDR { MODELPARAM_VALUE.C2_A02_BASE_ADDR PARAM_VALUE.C2_A02_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A02_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A02_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A03_BASE_ADDR { MODELPARAM_VALUE.C2_A03_BASE_ADDR PARAM_VALUE.C2_A03_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A03_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A03_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A04_BASE_ADDR { MODELPARAM_VALUE.C2_A04_BASE_ADDR PARAM_VALUE.C2_A04_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A04_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A04_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A05_BASE_ADDR { MODELPARAM_VALUE.C2_A05_BASE_ADDR PARAM_VALUE.C2_A05_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A05_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A05_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A06_BASE_ADDR { MODELPARAM_VALUE.C2_A06_BASE_ADDR PARAM_VALUE.C2_A06_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A06_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A06_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A07_BASE_ADDR { MODELPARAM_VALUE.C2_A07_BASE_ADDR PARAM_VALUE.C2_A07_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A07_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A07_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A08_BASE_ADDR { MODELPARAM_VALUE.C2_A08_BASE_ADDR PARAM_VALUE.C2_A08_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A08_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A08_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A09_BASE_ADDR { MODELPARAM_VALUE.C2_A09_BASE_ADDR PARAM_VALUE.C2_A09_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A09_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A09_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A10_BASE_ADDR { MODELPARAM_VALUE.C2_A10_BASE_ADDR PARAM_VALUE.C2_A10_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A10_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A10_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A11_BASE_ADDR { MODELPARAM_VALUE.C2_A11_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C2_A11_BASE_ADDR". Setting updated value from the model parameter.
set_property value 0xFFFFFFFFFFFFFFFF ${MODELPARAM_VALUE.C2_A11_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A12_BASE_ADDR { MODELPARAM_VALUE.C2_A12_BASE_ADDR PARAM_VALUE.C2_A12_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A12_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A12_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A13_BASE_ADDR { MODELPARAM_VALUE.C2_A13_BASE_ADDR PARAM_VALUE.C2_A13_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A13_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A13_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A14_BASE_ADDR { MODELPARAM_VALUE.C2_A14_BASE_ADDR PARAM_VALUE.C2_A14_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A14_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A14_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A15_BASE_ADDR { MODELPARAM_VALUE.C2_A15_BASE_ADDR PARAM_VALUE.C2_A15_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A15_BASE_ADDR}] ${MODELPARAM_VALUE.C2_A15_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A00_HIGH_ADDR { MODELPARAM_VALUE.C2_A00_HIGH_ADDR PARAM_VALUE.C2_A00_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A00_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A00_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A01_HIGH_ADDR { MODELPARAM_VALUE.C2_A01_HIGH_ADDR PARAM_VALUE.C2_A01_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A01_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A01_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A02_HIGH_ADDR { MODELPARAM_VALUE.C2_A02_HIGH_ADDR PARAM_VALUE.C2_A02_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A02_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A02_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A03_HIGH_ADDR { MODELPARAM_VALUE.C2_A03_HIGH_ADDR PARAM_VALUE.C2_A03_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A03_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A03_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A04_HIGH_ADDR { MODELPARAM_VALUE.C2_A04_HIGH_ADDR PARAM_VALUE.C2_A04_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A04_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A04_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A05_HIGH_ADDR { MODELPARAM_VALUE.C2_A05_HIGH_ADDR PARAM_VALUE.C2_A05_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A05_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A05_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A06_HIGH_ADDR { MODELPARAM_VALUE.C2_A06_HIGH_ADDR PARAM_VALUE.C2_A06_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A06_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A06_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A07_HIGH_ADDR { MODELPARAM_VALUE.C2_A07_HIGH_ADDR PARAM_VALUE.C2_A07_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A07_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A07_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A08_HIGH_ADDR { MODELPARAM_VALUE.C2_A08_HIGH_ADDR PARAM_VALUE.C2_A08_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A08_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A08_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A09_HIGH_ADDR { MODELPARAM_VALUE.C2_A09_HIGH_ADDR PARAM_VALUE.C2_A09_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A09_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A09_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A10_HIGH_ADDR { MODELPARAM_VALUE.C2_A10_HIGH_ADDR PARAM_VALUE.C2_A10_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A10_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A10_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A11_HIGH_ADDR { MODELPARAM_VALUE.C2_A11_HIGH_ADDR PARAM_VALUE.C2_A11_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A11_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A11_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A12_HIGH_ADDR { MODELPARAM_VALUE.C2_A12_HIGH_ADDR PARAM_VALUE.C2_A12_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A12_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A12_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A13_HIGH_ADDR { MODELPARAM_VALUE.C2_A13_HIGH_ADDR PARAM_VALUE.C2_A13_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A13_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A13_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A14_HIGH_ADDR { MODELPARAM_VALUE.C2_A14_HIGH_ADDR PARAM_VALUE.C2_A14_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A14_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A14_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C2_A15_HIGH_ADDR { MODELPARAM_VALUE.C2_A15_HIGH_ADDR PARAM_VALUE.C2_A15_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C2_A15_HIGH_ADDR}] ${MODELPARAM_VALUE.C2_A15_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_NAME { MODELPARAM_VALUE.C3_NAME PARAM_VALUE.C3_NAME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_NAME}] ${MODELPARAM_VALUE.C3_NAME}
}

proc update_MODELPARAM_VALUE.C3_TYPE { MODELPARAM_VALUE.C3_TYPE PARAM_VALUE.C3_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_TYPE}] ${MODELPARAM_VALUE.C3_TYPE}
}

proc update_MODELPARAM_VALUE.C3_SIZE { MODELPARAM_VALUE.C3_SIZE PARAM_VALUE.C3_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_SIZE}] ${MODELPARAM_VALUE.C3_SIZE}
}

proc update_MODELPARAM_VALUE.C3_AXI_ARBITRATION_SCHEME { MODELPARAM_VALUE.C3_AXI_ARBITRATION_SCHEME PARAM_VALUE.C3_AXI_ARBITRATION_SCHEME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_AXI_ARBITRATION_SCHEME}] ${MODELPARAM_VALUE.C3_AXI_ARBITRATION_SCHEME}
}

proc update_MODELPARAM_VALUE.C3_ControllerType { MODELPARAM_VALUE.C3_ControllerType PARAM_VALUE.C3_ControllerType } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_ControllerType}] ${MODELPARAM_VALUE.C3_ControllerType}
}

proc update_MODELPARAM_VALUE.C3_APP_ADDR_WIDTH { MODELPARAM_VALUE.C3_APP_ADDR_WIDTH PARAM_VALUE.C3_APP_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_APP_ADDR_WIDTH}] ${MODELPARAM_VALUE.C3_APP_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_APP_DATA_WIDTH { MODELPARAM_VALUE.C3_APP_DATA_WIDTH PARAM_VALUE.C3_APP_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_APP_DATA_WIDTH}] ${MODELPARAM_VALUE.C3_APP_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_Mem_Add_Map { MODELPARAM_VALUE.C3_Mem_Add_Map PARAM_VALUE.C3_Mem_Add_Map } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_Mem_Add_Map}] ${MODELPARAM_VALUE.C3_Mem_Add_Map}
}

proc update_MODELPARAM_VALUE.C3_Ordering { MODELPARAM_VALUE.C3_Ordering PARAM_VALUE.C3_Ordering } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_Ordering}] ${MODELPARAM_VALUE.C3_Ordering}
}

proc update_MODELPARAM_VALUE.C3_ADDR_WIDTH { MODELPARAM_VALUE.C3_ADDR_WIDTH PARAM_VALUE.C3_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_ADDR_WIDTH}] ${MODELPARAM_VALUE.C3_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C3_AXI_ADDR_WIDTH PARAM_VALUE.C3_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C3_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_AXI_DATA_WIDTH { MODELPARAM_VALUE.C3_AXI_DATA_WIDTH PARAM_VALUE.C3_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C3_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_AXI_ID_WIDTH { MODELPARAM_VALUE.C3_AXI_ID_WIDTH PARAM_VALUE.C3_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C3_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_BANK_GROUP_WIDTH { MODELPARAM_VALUE.C3_BANK_GROUP_WIDTH PARAM_VALUE.C3_BANK_GROUP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_BANK_GROUP_WIDTH}] ${MODELPARAM_VALUE.C3_BANK_GROUP_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_BANK_WIDTH { MODELPARAM_VALUE.C3_BANK_WIDTH PARAM_VALUE.C3_BANK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_BANK_WIDTH}] ${MODELPARAM_VALUE.C3_BANK_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_CL { MODELPARAM_VALUE.C3_CL PARAM_VALUE.C3_CL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_CL}] ${MODELPARAM_VALUE.C3_CL}
}

proc update_MODELPARAM_VALUE.C3_COLUMN_WIDTH { MODELPARAM_VALUE.C3_COLUMN_WIDTH PARAM_VALUE.C3_COLUMN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_COLUMN_WIDTH}] ${MODELPARAM_VALUE.C3_COLUMN_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_CWL { MODELPARAM_VALUE.C3_CWL PARAM_VALUE.C3_CWL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_CWL}] ${MODELPARAM_VALUE.C3_CWL}
}

proc update_MODELPARAM_VALUE.C3_RANK_WIDTH { MODELPARAM_VALUE.C3_RANK_WIDTH PARAM_VALUE.C3_RANK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_RANK_WIDTH}] ${MODELPARAM_VALUE.C3_RANK_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_ROW_WIDTH { MODELPARAM_VALUE.C3_ROW_WIDTH PARAM_VALUE.C3_ROW_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_ROW_WIDTH}] ${MODELPARAM_VALUE.C3_ROW_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_tCK { MODELPARAM_VALUE.C3_tCK PARAM_VALUE.C3_tCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tCK}] ${MODELPARAM_VALUE.C3_tCK}
}

proc update_MODELPARAM_VALUE.C3_tCKE { MODELPARAM_VALUE.C3_tCKE PARAM_VALUE.C3_tCKE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tCKE}] ${MODELPARAM_VALUE.C3_tCKE}
}

proc update_MODELPARAM_VALUE.C3_tFAW { MODELPARAM_VALUE.C3_tFAW PARAM_VALUE.C3_tFAW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tFAW}] ${MODELPARAM_VALUE.C3_tFAW}
}

proc update_MODELPARAM_VALUE.C3_tMRD { MODELPARAM_VALUE.C3_tMRD PARAM_VALUE.C3_tMRD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tMRD}] ${MODELPARAM_VALUE.C3_tMRD}
}

proc update_MODELPARAM_VALUE.C3_tRAS { MODELPARAM_VALUE.C3_tRAS PARAM_VALUE.C3_tRAS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tRAS}] ${MODELPARAM_VALUE.C3_tRAS}
}

proc update_MODELPARAM_VALUE.C3_tRCD { MODELPARAM_VALUE.C3_tRCD PARAM_VALUE.C3_tRCD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tRCD}] ${MODELPARAM_VALUE.C3_tRCD}
}

proc update_MODELPARAM_VALUE.C3_tREFI { MODELPARAM_VALUE.C3_tREFI PARAM_VALUE.C3_tREFI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tREFI}] ${MODELPARAM_VALUE.C3_tREFI}
}

proc update_MODELPARAM_VALUE.C3_tRFC { MODELPARAM_VALUE.C3_tRFC PARAM_VALUE.C3_tRFC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tRFC}] ${MODELPARAM_VALUE.C3_tRFC}
}

proc update_MODELPARAM_VALUE.C3_tRP { MODELPARAM_VALUE.C3_tRP PARAM_VALUE.C3_tRP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tRP}] ${MODELPARAM_VALUE.C3_tRP}
}

proc update_MODELPARAM_VALUE.C3_tRTW { MODELPARAM_VALUE.C3_tRTW PARAM_VALUE.C3_tRTW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tRTW}] ${MODELPARAM_VALUE.C3_tRTW}
}

proc update_MODELPARAM_VALUE.C3_tCCD { MODELPARAM_VALUE.C3_tCCD PARAM_VALUE.C3_tCCD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tCCD}] ${MODELPARAM_VALUE.C3_tCCD}
}

proc update_MODELPARAM_VALUE.C3_tRRD { MODELPARAM_VALUE.C3_tRRD PARAM_VALUE.C3_tRRD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tRRD}] ${MODELPARAM_VALUE.C3_tRRD}
}

proc update_MODELPARAM_VALUE.C3_tRRD_L { MODELPARAM_VALUE.C3_tRRD_L PARAM_VALUE.C3_tRRD_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tRRD_L}] ${MODELPARAM_VALUE.C3_tRRD_L}
}

proc update_MODELPARAM_VALUE.C3_tRRD_S { MODELPARAM_VALUE.C3_tRRD_S PARAM_VALUE.C3_tRRD_S } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tRRD_S}] ${MODELPARAM_VALUE.C3_tRRD_S}
}

proc update_MODELPARAM_VALUE.C3_tRTP { MODELPARAM_VALUE.C3_tRTP PARAM_VALUE.C3_tRTP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tRTP}] ${MODELPARAM_VALUE.C3_tRTP}
}

proc update_MODELPARAM_VALUE.C3_tWR { MODELPARAM_VALUE.C3_tWR PARAM_VALUE.C3_tWR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tWR}] ${MODELPARAM_VALUE.C3_tWR}
}

proc update_MODELPARAM_VALUE.C3_tWTR { MODELPARAM_VALUE.C3_tWTR PARAM_VALUE.C3_tWTR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tWTR}] ${MODELPARAM_VALUE.C3_tWTR}
}

proc update_MODELPARAM_VALUE.C3_tWTR_L { MODELPARAM_VALUE.C3_tWTR_L PARAM_VALUE.C3_tWTR_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tWTR_L}] ${MODELPARAM_VALUE.C3_tWTR_L}
}

proc update_MODELPARAM_VALUE.C3_tWTR_S { MODELPARAM_VALUE.C3_tWTR_S PARAM_VALUE.C3_tWTR_S } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tWTR_S}] ${MODELPARAM_VALUE.C3_tWTR_S}
}

proc update_MODELPARAM_VALUE.C3_tXPR { MODELPARAM_VALUE.C3_tXPR PARAM_VALUE.C3_tXPR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tXPR}] ${MODELPARAM_VALUE.C3_tXPR}
}

proc update_MODELPARAM_VALUE.C3_tZQCS { MODELPARAM_VALUE.C3_tZQCS PARAM_VALUE.C3_tZQCS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tZQCS}] ${MODELPARAM_VALUE.C3_tZQCS}
}

proc update_MODELPARAM_VALUE.C3_tZQI { MODELPARAM_VALUE.C3_tZQI PARAM_VALUE.C3_tZQI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tZQI}] ${MODELPARAM_VALUE.C3_tZQI}
}

proc update_MODELPARAM_VALUE.C3_tZQINIT { MODELPARAM_VALUE.C3_tZQINIT PARAM_VALUE.C3_tZQINIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_tZQINIT}] ${MODELPARAM_VALUE.C3_tZQINIT}
}

proc update_MODELPARAM_VALUE.C3_AutoPrecharge { MODELPARAM_VALUE.C3_AutoPrecharge PARAM_VALUE.C3_AutoPrecharge } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_AutoPrecharge}] ${MODELPARAM_VALUE.C3_AutoPrecharge}
}

proc update_MODELPARAM_VALUE.C3_AxiNarrowBurst { MODELPARAM_VALUE.C3_AxiNarrowBurst PARAM_VALUE.C3_AxiNarrowBurst } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_AxiNarrowBurst}] ${MODELPARAM_VALUE.C3_AxiNarrowBurst}
}

proc update_MODELPARAM_VALUE.C3_BURST_LENGTH { MODELPARAM_VALUE.C3_BURST_LENGTH PARAM_VALUE.C3_BURST_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_BURST_LENGTH}] ${MODELPARAM_VALUE.C3_BURST_LENGTH}
}

proc update_MODELPARAM_VALUE.C3_CAS_LATENCY { MODELPARAM_VALUE.C3_CAS_LATENCY PARAM_VALUE.C3_CAS_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_CAS_LATENCY}] ${MODELPARAM_VALUE.C3_CAS_LATENCY}
}

proc update_MODELPARAM_VALUE.C3_CAS_WRITE_LATENCY { MODELPARAM_VALUE.C3_CAS_WRITE_LATENCY PARAM_VALUE.C3_CAS_WRITE_LATENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_CAS_WRITE_LATENCY}] ${MODELPARAM_VALUE.C3_CAS_WRITE_LATENCY}
}

proc update_MODELPARAM_VALUE.C3_DATA_WIDTH { MODELPARAM_VALUE.C3_DATA_WIDTH PARAM_VALUE.C3_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_DATA_WIDTH}] ${MODELPARAM_VALUE.C3_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C3_MEMORY_PART { MODELPARAM_VALUE.C3_MEMORY_PART PARAM_VALUE.C3_MEMORY_PART } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_MEMORY_PART}] ${MODELPARAM_VALUE.C3_MEMORY_PART}
}

proc update_MODELPARAM_VALUE.C3_MEM_ADDR_MAP { MODELPARAM_VALUE.C3_MEM_ADDR_MAP PARAM_VALUE.C3_MEM_ADDR_MAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_MEM_ADDR_MAP}] ${MODELPARAM_VALUE.C3_MEM_ADDR_MAP}
}

proc update_MODELPARAM_VALUE.C3_TIMEPERIOD_PS { MODELPARAM_VALUE.C3_TIMEPERIOD_PS PARAM_VALUE.C3_TIMEPERIOD_PS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_TIMEPERIOD_PS}] ${MODELPARAM_VALUE.C3_TIMEPERIOD_PS}
}

proc update_MODELPARAM_VALUE.C3_A00_BASE_ADDR { MODELPARAM_VALUE.C3_A00_BASE_ADDR PARAM_VALUE.C3_A00_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A00_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A00_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A01_BASE_ADDR { MODELPARAM_VALUE.C3_A01_BASE_ADDR PARAM_VALUE.C3_A01_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A01_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A01_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A02_BASE_ADDR { MODELPARAM_VALUE.C3_A02_BASE_ADDR PARAM_VALUE.C3_A02_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A02_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A02_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A03_BASE_ADDR { MODELPARAM_VALUE.C3_A03_BASE_ADDR PARAM_VALUE.C3_A03_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A03_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A03_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A04_BASE_ADDR { MODELPARAM_VALUE.C3_A04_BASE_ADDR PARAM_VALUE.C3_A04_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A04_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A04_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A05_BASE_ADDR { MODELPARAM_VALUE.C3_A05_BASE_ADDR PARAM_VALUE.C3_A05_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A05_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A05_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A06_BASE_ADDR { MODELPARAM_VALUE.C3_A06_BASE_ADDR PARAM_VALUE.C3_A06_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A06_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A06_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A07_BASE_ADDR { MODELPARAM_VALUE.C3_A07_BASE_ADDR PARAM_VALUE.C3_A07_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A07_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A07_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A08_BASE_ADDR { MODELPARAM_VALUE.C3_A08_BASE_ADDR PARAM_VALUE.C3_A08_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A08_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A08_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A09_BASE_ADDR { MODELPARAM_VALUE.C3_A09_BASE_ADDR PARAM_VALUE.C3_A09_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A09_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A09_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A10_BASE_ADDR { MODELPARAM_VALUE.C3_A10_BASE_ADDR PARAM_VALUE.C3_A10_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A10_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A10_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A11_BASE_ADDR { MODELPARAM_VALUE.C3_A11_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C3_A11_BASE_ADDR". Setting updated value from the model parameter.
set_property value 0xFFFFFFFFFFFFFFFF ${MODELPARAM_VALUE.C3_A11_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A12_BASE_ADDR { MODELPARAM_VALUE.C3_A12_BASE_ADDR PARAM_VALUE.C3_A12_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A12_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A12_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A13_BASE_ADDR { MODELPARAM_VALUE.C3_A13_BASE_ADDR PARAM_VALUE.C3_A13_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A13_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A13_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A14_BASE_ADDR { MODELPARAM_VALUE.C3_A14_BASE_ADDR PARAM_VALUE.C3_A14_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A14_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A14_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A15_BASE_ADDR { MODELPARAM_VALUE.C3_A15_BASE_ADDR PARAM_VALUE.C3_A15_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A15_BASE_ADDR}] ${MODELPARAM_VALUE.C3_A15_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A00_HIGH_ADDR { MODELPARAM_VALUE.C3_A00_HIGH_ADDR PARAM_VALUE.C3_A00_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A00_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A00_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A01_HIGH_ADDR { MODELPARAM_VALUE.C3_A01_HIGH_ADDR PARAM_VALUE.C3_A01_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A01_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A01_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A02_HIGH_ADDR { MODELPARAM_VALUE.C3_A02_HIGH_ADDR PARAM_VALUE.C3_A02_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A02_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A02_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A03_HIGH_ADDR { MODELPARAM_VALUE.C3_A03_HIGH_ADDR PARAM_VALUE.C3_A03_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A03_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A03_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A04_HIGH_ADDR { MODELPARAM_VALUE.C3_A04_HIGH_ADDR PARAM_VALUE.C3_A04_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A04_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A04_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A05_HIGH_ADDR { MODELPARAM_VALUE.C3_A05_HIGH_ADDR PARAM_VALUE.C3_A05_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A05_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A05_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A06_HIGH_ADDR { MODELPARAM_VALUE.C3_A06_HIGH_ADDR PARAM_VALUE.C3_A06_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A06_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A06_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A07_HIGH_ADDR { MODELPARAM_VALUE.C3_A07_HIGH_ADDR PARAM_VALUE.C3_A07_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A07_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A07_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A08_HIGH_ADDR { MODELPARAM_VALUE.C3_A08_HIGH_ADDR PARAM_VALUE.C3_A08_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A08_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A08_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A09_HIGH_ADDR { MODELPARAM_VALUE.C3_A09_HIGH_ADDR PARAM_VALUE.C3_A09_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A09_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A09_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A10_HIGH_ADDR { MODELPARAM_VALUE.C3_A10_HIGH_ADDR PARAM_VALUE.C3_A10_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A10_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A10_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A11_HIGH_ADDR { MODELPARAM_VALUE.C3_A11_HIGH_ADDR PARAM_VALUE.C3_A11_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A11_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A11_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A12_HIGH_ADDR { MODELPARAM_VALUE.C3_A12_HIGH_ADDR PARAM_VALUE.C3_A12_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A12_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A12_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A13_HIGH_ADDR { MODELPARAM_VALUE.C3_A13_HIGH_ADDR PARAM_VALUE.C3_A13_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A13_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A13_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A14_HIGH_ADDR { MODELPARAM_VALUE.C3_A14_HIGH_ADDR PARAM_VALUE.C3_A14_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A14_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A14_HIGH_ADDR}
}

proc update_MODELPARAM_VALUE.C3_A15_HIGH_ADDR { MODELPARAM_VALUE.C3_A15_HIGH_ADDR PARAM_VALUE.C3_A15_HIGH_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C3_A15_HIGH_ADDR}] ${MODELPARAM_VALUE.C3_A15_HIGH_ADDR}
}

