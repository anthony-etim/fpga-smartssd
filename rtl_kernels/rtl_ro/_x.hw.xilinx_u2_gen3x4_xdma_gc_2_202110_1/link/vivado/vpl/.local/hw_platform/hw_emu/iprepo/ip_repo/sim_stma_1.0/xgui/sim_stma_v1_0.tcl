# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_M00_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M01_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M01_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M01_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M01_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M01_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M01_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M01_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M02_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M02_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M02_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M02_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M02_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M02_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M02_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M03_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M03_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M03_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M03_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M03_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M03_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M03_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M04_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M04_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M04_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M04_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M04_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M04_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M04_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M05_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M05_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M05_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M05_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M05_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M05_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M05_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M06_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M06_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M06_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M06_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M06_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M06_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M06_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M07_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M07_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M07_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M07_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M07_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M07_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M07_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M08_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M08_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M08_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M08_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M08_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M08_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M08_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M09_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M09_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M09_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M09_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M09_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M09_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M09_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M10_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M10_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M10_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M10_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M10_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M10_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M10_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M11_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M11_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M11_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M11_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M11_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M11_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M11_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M12_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M12_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M12_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M12_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M12_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M12_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M12_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M13_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M13_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M13_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M13_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M13_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M13_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M13_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M14_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M14_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M14_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M14_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M14_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M14_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M14_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M15_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M15_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M15_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M15_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M15_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M15_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M15_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_STM_C2H_A_AXI_S_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_STM_C2H_A_AXI_S_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_STM_C2H_A_AXI_S_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_STM_C2H_A_AXI_S_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_STM_C2H_A_AXI_S_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_STM_C2H_A_AXI_S_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_STM_C2H_A_AXI_S_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S01_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S01_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S01_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S01_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S01_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S01_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S01_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S02_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S02_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S02_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S02_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S02_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S02_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S02_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S03_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S03_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S03_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S03_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S03_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S03_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S03_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S04_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S04_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S04_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S04_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S04_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S04_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S04_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S05_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S05_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S05_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S05_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S05_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S05_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S05_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S06_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S06_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S06_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S06_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S06_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S06_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S06_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S07_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S07_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S07_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S07_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S07_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S07_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S07_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S08_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S08_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S08_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S08_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S08_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S08_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S08_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S09_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S09_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S09_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S09_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S09_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S09_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S09_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S10_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S10_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S10_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S10_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S10_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S10_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S10_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S11_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S11_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S11_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S11_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S11_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S11_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S11_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S12_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S12_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S12_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S12_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S12_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S12_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S12_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S13_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S13_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S13_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S13_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S13_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S13_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S13_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S14_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S14_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S14_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S14_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S14_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S14_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S14_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S15_AXIS_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S15_AXIS_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S15_AXIS_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S15_AXIS_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S15_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S15_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S15_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_STM_H2C_A_AXI_S_HAS_TKEEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_STM_H2C_A_AXI_S_HAS_TLAST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_STM_H2C_A_AXI_S_HAS_TREADY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_STM_H2C_A_AXI_S_HAS_TSTRB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_STM_H2C_A_AXI_S_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_STM_H2C_A_AXI_S_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_STM_H2C_A_AXI_S_TUSER_WIDTH" -parent ${Page_0}
  set C_M_STM_C2H_A_AXI_S_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M_STM_C2H_A_AXI_S_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M_STM_C2H_A_AXI_S_TDATA_WIDTH}
  set C_M_STM_C2H_A_AXI_S_START_COUNT [ipgui::add_param $IPINST -name "C_M_STM_C2H_A_AXI_S_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M_STM_C2H_A_AXI_S_START_COUNT}
  set C_M05_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M05_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M05_AXIS_TDATA_WIDTH}
  set C_M05_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M05_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M05_AXIS_START_COUNT}
  set C_S_STM_H2C_A_AXI_S_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S_STM_H2C_A_AXI_S_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S_STM_H2C_A_AXI_S_TDATA_WIDTH}
  set C_M00_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M00_AXIS_TDATA_WIDTH}
  set C_M00_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M00_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M00_AXIS_START_COUNT}
  set C_S00_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S00_AXIS_TDATA_WIDTH}
  set C_S03_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S03_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S03_AXIS_TDATA_WIDTH}
  set C_S01_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S01_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S01_AXIS_TDATA_WIDTH}
  set C_M01_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M01_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M01_AXIS_TDATA_WIDTH}
  set C_M01_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M01_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M01_AXIS_START_COUNT}
  set C_M02_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M02_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M02_AXIS_TDATA_WIDTH}
  set C_M02_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M02_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M02_AXIS_START_COUNT}
  set C_S04_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S04_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S04_AXIS_TDATA_WIDTH}
  set C_M03_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M03_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M03_AXIS_TDATA_WIDTH}
  set C_M03_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M03_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M03_AXIS_START_COUNT}
  set C_S02_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S02_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S02_AXIS_TDATA_WIDTH}
  set C_M04_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M04_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M04_AXIS_TDATA_WIDTH}
  set C_M04_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M04_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M04_AXIS_START_COUNT}
  set C_M06_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M06_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M06_AXIS_TDATA_WIDTH}
  set C_M06_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M06_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M06_AXIS_START_COUNT}
  set C_S05_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S05_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S05_AXIS_TDATA_WIDTH}
  set C_M07_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M07_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M07_AXIS_TDATA_WIDTH}
  set C_M07_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M07_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M07_AXIS_START_COUNT}
  set C_S06_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S06_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S06_AXIS_TDATA_WIDTH}
  set C_S07_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S07_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S07_AXIS_TDATA_WIDTH}
  set C_S15_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S15_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S15_AXIS_TDATA_WIDTH}
  set C_M08_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M08_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M08_AXIS_TDATA_WIDTH}
  set C_M08_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M08_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M08_AXIS_START_COUNT}
  set C_M15_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M15_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M15_AXIS_TDATA_WIDTH}
  set C_M15_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M15_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M15_AXIS_START_COUNT}
  set C_S14_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S14_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S14_AXIS_TDATA_WIDTH}
  set C_M14_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M14_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M14_AXIS_TDATA_WIDTH}
  set C_M14_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M14_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M14_AXIS_START_COUNT}
  set C_S13_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S13_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S13_AXIS_TDATA_WIDTH}
  set C_M13_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M13_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M13_AXIS_TDATA_WIDTH}
  set C_M13_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M13_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M13_AXIS_START_COUNT}
  set C_S12_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S12_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S12_AXIS_TDATA_WIDTH}
  set C_M12_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M12_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M12_AXIS_TDATA_WIDTH}
  set C_M12_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M12_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M12_AXIS_START_COUNT}
  set C_S11_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S11_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S11_AXIS_TDATA_WIDTH}
  set C_M11_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M11_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M11_AXIS_TDATA_WIDTH}
  set C_M11_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M11_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M11_AXIS_START_COUNT}
  set C_S10_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S10_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S10_AXIS_TDATA_WIDTH}
  set C_M10_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M10_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M10_AXIS_TDATA_WIDTH}
  set C_M10_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M10_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M10_AXIS_START_COUNT}
  set C_S09_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S09_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S09_AXIS_TDATA_WIDTH}
  set C_M09_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M09_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M09_AXIS_TDATA_WIDTH}
  set C_M09_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M09_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M09_AXIS_START_COUNT}
  set C_S08_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S08_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S08_AXIS_TDATA_WIDTH}

  #Adding Page
  set STMA_configuration [ipgui::add_page $IPINST -name "STMA configuration"]
  set NUM_SI [ipgui::add_param $IPINST -name "NUM_SI" -parent ${STMA_configuration}]
  set_property tooltip {Number of stream Slave Interfaces} ${NUM_SI}
  set NUM_MI [ipgui::add_param $IPINST -name "NUM_MI" -parent ${STMA_configuration}]
  set_property tooltip {Number of stream Master Interfaces} ${NUM_MI}

  #Adding Page
  set Routing_configuration [ipgui::add_page $IPINST -name "Routing configuration"]
  ipgui::add_param $IPINST -name "ROUTE_ID00" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID00" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID01" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID01" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID02" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID02" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID03" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID03" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID04" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID04" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID05" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID05" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID06" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID06" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID07" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID07" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID08" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID08" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID09" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID09" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID10" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID10" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID11" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID11" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID12" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID12" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID13" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID13" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID14" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID14" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "ROUTE_ID15" -parent ${Routing_configuration}
  ipgui::add_param $IPINST -name "FLOW_ID15" -parent ${Routing_configuration}


}

proc update_PARAM_VALUE.C_M00_AXIS_HAS_TKEEP { PARAM_VALUE.C_M00_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M00_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_HAS_TKEEP { PARAM_VALUE.C_M00_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M00_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_HAS_TLAST { PARAM_VALUE.C_M00_AXIS_HAS_TLAST } {
	# Procedure called to update C_M00_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_HAS_TLAST { PARAM_VALUE.C_M00_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M00_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_HAS_TREADY { PARAM_VALUE.C_M00_AXIS_HAS_TREADY } {
	# Procedure called to update C_M00_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_HAS_TREADY { PARAM_VALUE.C_M00_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M00_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_HAS_TSTRB { PARAM_VALUE.C_M00_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M00_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_HAS_TSTRB { PARAM_VALUE.C_M00_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M00_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M00_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M00_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M00_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M00_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_TID_WIDTH { PARAM_VALUE.C_M00_AXIS_TID_WIDTH } {
	# Procedure called to update C_M00_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_TID_WIDTH { PARAM_VALUE.C_M00_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M00_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M00_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M00_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M00_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M00_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXIS_HAS_TKEEP { PARAM_VALUE.C_M01_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M01_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXIS_HAS_TKEEP { PARAM_VALUE.C_M01_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M01_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M01_AXIS_HAS_TLAST { PARAM_VALUE.C_M01_AXIS_HAS_TLAST } {
	# Procedure called to update C_M01_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXIS_HAS_TLAST { PARAM_VALUE.C_M01_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M01_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M01_AXIS_HAS_TREADY { PARAM_VALUE.C_M01_AXIS_HAS_TREADY } {
	# Procedure called to update C_M01_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXIS_HAS_TREADY { PARAM_VALUE.C_M01_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M01_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M01_AXIS_HAS_TSTRB { PARAM_VALUE.C_M01_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M01_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXIS_HAS_TSTRB { PARAM_VALUE.C_M01_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M01_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M01_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M01_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M01_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M01_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M01_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXIS_TID_WIDTH { PARAM_VALUE.C_M01_AXIS_TID_WIDTH } {
	# Procedure called to update C_M01_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXIS_TID_WIDTH { PARAM_VALUE.C_M01_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M01_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M01_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M01_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M01_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M01_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M02_AXIS_HAS_TKEEP { PARAM_VALUE.C_M02_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M02_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M02_AXIS_HAS_TKEEP { PARAM_VALUE.C_M02_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M02_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M02_AXIS_HAS_TLAST { PARAM_VALUE.C_M02_AXIS_HAS_TLAST } {
	# Procedure called to update C_M02_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M02_AXIS_HAS_TLAST { PARAM_VALUE.C_M02_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M02_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M02_AXIS_HAS_TREADY { PARAM_VALUE.C_M02_AXIS_HAS_TREADY } {
	# Procedure called to update C_M02_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M02_AXIS_HAS_TREADY { PARAM_VALUE.C_M02_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M02_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M02_AXIS_HAS_TSTRB { PARAM_VALUE.C_M02_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M02_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M02_AXIS_HAS_TSTRB { PARAM_VALUE.C_M02_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M02_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M02_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M02_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M02_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M02_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M02_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M02_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M02_AXIS_TID_WIDTH { PARAM_VALUE.C_M02_AXIS_TID_WIDTH } {
	# Procedure called to update C_M02_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M02_AXIS_TID_WIDTH { PARAM_VALUE.C_M02_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M02_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M02_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M02_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M02_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M02_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M02_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M02_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M03_AXIS_HAS_TKEEP { PARAM_VALUE.C_M03_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M03_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M03_AXIS_HAS_TKEEP { PARAM_VALUE.C_M03_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M03_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M03_AXIS_HAS_TLAST { PARAM_VALUE.C_M03_AXIS_HAS_TLAST } {
	# Procedure called to update C_M03_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M03_AXIS_HAS_TLAST { PARAM_VALUE.C_M03_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M03_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M03_AXIS_HAS_TREADY { PARAM_VALUE.C_M03_AXIS_HAS_TREADY } {
	# Procedure called to update C_M03_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M03_AXIS_HAS_TREADY { PARAM_VALUE.C_M03_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M03_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M03_AXIS_HAS_TSTRB { PARAM_VALUE.C_M03_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M03_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M03_AXIS_HAS_TSTRB { PARAM_VALUE.C_M03_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M03_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M03_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M03_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M03_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M03_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M03_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M03_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M03_AXIS_TID_WIDTH { PARAM_VALUE.C_M03_AXIS_TID_WIDTH } {
	# Procedure called to update C_M03_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M03_AXIS_TID_WIDTH { PARAM_VALUE.C_M03_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M03_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M03_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M03_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M03_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M03_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M03_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M03_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M04_AXIS_HAS_TKEEP { PARAM_VALUE.C_M04_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M04_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M04_AXIS_HAS_TKEEP { PARAM_VALUE.C_M04_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M04_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M04_AXIS_HAS_TLAST { PARAM_VALUE.C_M04_AXIS_HAS_TLAST } {
	# Procedure called to update C_M04_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M04_AXIS_HAS_TLAST { PARAM_VALUE.C_M04_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M04_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M04_AXIS_HAS_TREADY { PARAM_VALUE.C_M04_AXIS_HAS_TREADY } {
	# Procedure called to update C_M04_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M04_AXIS_HAS_TREADY { PARAM_VALUE.C_M04_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M04_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M04_AXIS_HAS_TSTRB { PARAM_VALUE.C_M04_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M04_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M04_AXIS_HAS_TSTRB { PARAM_VALUE.C_M04_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M04_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M04_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M04_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M04_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M04_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M04_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M04_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M04_AXIS_TID_WIDTH { PARAM_VALUE.C_M04_AXIS_TID_WIDTH } {
	# Procedure called to update C_M04_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M04_AXIS_TID_WIDTH { PARAM_VALUE.C_M04_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M04_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M04_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M04_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M04_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M04_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M04_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M04_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M05_AXIS_HAS_TKEEP { PARAM_VALUE.C_M05_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M05_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M05_AXIS_HAS_TKEEP { PARAM_VALUE.C_M05_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M05_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M05_AXIS_HAS_TLAST { PARAM_VALUE.C_M05_AXIS_HAS_TLAST } {
	# Procedure called to update C_M05_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M05_AXIS_HAS_TLAST { PARAM_VALUE.C_M05_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M05_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M05_AXIS_HAS_TREADY { PARAM_VALUE.C_M05_AXIS_HAS_TREADY } {
	# Procedure called to update C_M05_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M05_AXIS_HAS_TREADY { PARAM_VALUE.C_M05_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M05_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M05_AXIS_HAS_TSTRB { PARAM_VALUE.C_M05_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M05_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M05_AXIS_HAS_TSTRB { PARAM_VALUE.C_M05_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M05_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M05_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M05_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M05_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M05_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M05_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M05_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M05_AXIS_TID_WIDTH { PARAM_VALUE.C_M05_AXIS_TID_WIDTH } {
	# Procedure called to update C_M05_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M05_AXIS_TID_WIDTH { PARAM_VALUE.C_M05_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M05_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M05_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M05_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M05_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M05_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M05_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M05_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M06_AXIS_HAS_TKEEP { PARAM_VALUE.C_M06_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M06_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M06_AXIS_HAS_TKEEP { PARAM_VALUE.C_M06_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M06_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M06_AXIS_HAS_TLAST { PARAM_VALUE.C_M06_AXIS_HAS_TLAST } {
	# Procedure called to update C_M06_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M06_AXIS_HAS_TLAST { PARAM_VALUE.C_M06_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M06_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M06_AXIS_HAS_TREADY { PARAM_VALUE.C_M06_AXIS_HAS_TREADY } {
	# Procedure called to update C_M06_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M06_AXIS_HAS_TREADY { PARAM_VALUE.C_M06_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M06_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M06_AXIS_HAS_TSTRB { PARAM_VALUE.C_M06_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M06_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M06_AXIS_HAS_TSTRB { PARAM_VALUE.C_M06_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M06_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M06_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M06_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M06_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M06_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M06_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M06_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M06_AXIS_TID_WIDTH { PARAM_VALUE.C_M06_AXIS_TID_WIDTH } {
	# Procedure called to update C_M06_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M06_AXIS_TID_WIDTH { PARAM_VALUE.C_M06_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M06_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M06_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M06_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M06_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M06_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M06_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M06_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M07_AXIS_HAS_TKEEP { PARAM_VALUE.C_M07_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M07_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M07_AXIS_HAS_TKEEP { PARAM_VALUE.C_M07_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M07_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M07_AXIS_HAS_TLAST { PARAM_VALUE.C_M07_AXIS_HAS_TLAST } {
	# Procedure called to update C_M07_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M07_AXIS_HAS_TLAST { PARAM_VALUE.C_M07_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M07_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M07_AXIS_HAS_TREADY { PARAM_VALUE.C_M07_AXIS_HAS_TREADY } {
	# Procedure called to update C_M07_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M07_AXIS_HAS_TREADY { PARAM_VALUE.C_M07_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M07_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M07_AXIS_HAS_TSTRB { PARAM_VALUE.C_M07_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M07_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M07_AXIS_HAS_TSTRB { PARAM_VALUE.C_M07_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M07_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M07_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M07_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M07_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M07_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M07_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M07_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M07_AXIS_TID_WIDTH { PARAM_VALUE.C_M07_AXIS_TID_WIDTH } {
	# Procedure called to update C_M07_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M07_AXIS_TID_WIDTH { PARAM_VALUE.C_M07_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M07_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M07_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M07_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M07_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M07_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M07_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M07_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M08_AXIS_HAS_TKEEP { PARAM_VALUE.C_M08_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M08_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M08_AXIS_HAS_TKEEP { PARAM_VALUE.C_M08_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M08_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M08_AXIS_HAS_TLAST { PARAM_VALUE.C_M08_AXIS_HAS_TLAST } {
	# Procedure called to update C_M08_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M08_AXIS_HAS_TLAST { PARAM_VALUE.C_M08_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M08_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M08_AXIS_HAS_TREADY { PARAM_VALUE.C_M08_AXIS_HAS_TREADY } {
	# Procedure called to update C_M08_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M08_AXIS_HAS_TREADY { PARAM_VALUE.C_M08_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M08_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M08_AXIS_HAS_TSTRB { PARAM_VALUE.C_M08_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M08_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M08_AXIS_HAS_TSTRB { PARAM_VALUE.C_M08_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M08_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M08_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M08_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M08_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M08_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M08_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M08_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M08_AXIS_TID_WIDTH { PARAM_VALUE.C_M08_AXIS_TID_WIDTH } {
	# Procedure called to update C_M08_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M08_AXIS_TID_WIDTH { PARAM_VALUE.C_M08_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M08_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M08_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M08_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M08_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M08_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M08_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M08_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M09_AXIS_HAS_TKEEP { PARAM_VALUE.C_M09_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M09_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M09_AXIS_HAS_TKEEP { PARAM_VALUE.C_M09_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M09_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M09_AXIS_HAS_TLAST { PARAM_VALUE.C_M09_AXIS_HAS_TLAST } {
	# Procedure called to update C_M09_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M09_AXIS_HAS_TLAST { PARAM_VALUE.C_M09_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M09_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M09_AXIS_HAS_TREADY { PARAM_VALUE.C_M09_AXIS_HAS_TREADY } {
	# Procedure called to update C_M09_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M09_AXIS_HAS_TREADY { PARAM_VALUE.C_M09_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M09_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M09_AXIS_HAS_TSTRB { PARAM_VALUE.C_M09_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M09_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M09_AXIS_HAS_TSTRB { PARAM_VALUE.C_M09_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M09_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M09_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M09_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M09_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M09_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M09_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M09_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M09_AXIS_TID_WIDTH { PARAM_VALUE.C_M09_AXIS_TID_WIDTH } {
	# Procedure called to update C_M09_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M09_AXIS_TID_WIDTH { PARAM_VALUE.C_M09_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M09_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M09_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M09_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M09_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M09_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M09_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M09_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M10_AXIS_HAS_TKEEP { PARAM_VALUE.C_M10_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M10_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M10_AXIS_HAS_TKEEP { PARAM_VALUE.C_M10_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M10_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M10_AXIS_HAS_TLAST { PARAM_VALUE.C_M10_AXIS_HAS_TLAST } {
	# Procedure called to update C_M10_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M10_AXIS_HAS_TLAST { PARAM_VALUE.C_M10_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M10_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M10_AXIS_HAS_TREADY { PARAM_VALUE.C_M10_AXIS_HAS_TREADY } {
	# Procedure called to update C_M10_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M10_AXIS_HAS_TREADY { PARAM_VALUE.C_M10_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M10_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M10_AXIS_HAS_TSTRB { PARAM_VALUE.C_M10_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M10_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M10_AXIS_HAS_TSTRB { PARAM_VALUE.C_M10_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M10_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M10_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M10_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M10_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M10_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M10_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M10_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M10_AXIS_TID_WIDTH { PARAM_VALUE.C_M10_AXIS_TID_WIDTH } {
	# Procedure called to update C_M10_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M10_AXIS_TID_WIDTH { PARAM_VALUE.C_M10_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M10_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M10_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M10_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M10_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M10_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M10_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M10_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M11_AXIS_HAS_TKEEP { PARAM_VALUE.C_M11_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M11_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M11_AXIS_HAS_TKEEP { PARAM_VALUE.C_M11_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M11_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M11_AXIS_HAS_TLAST { PARAM_VALUE.C_M11_AXIS_HAS_TLAST } {
	# Procedure called to update C_M11_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M11_AXIS_HAS_TLAST { PARAM_VALUE.C_M11_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M11_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M11_AXIS_HAS_TREADY { PARAM_VALUE.C_M11_AXIS_HAS_TREADY } {
	# Procedure called to update C_M11_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M11_AXIS_HAS_TREADY { PARAM_VALUE.C_M11_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M11_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M11_AXIS_HAS_TSTRB { PARAM_VALUE.C_M11_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M11_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M11_AXIS_HAS_TSTRB { PARAM_VALUE.C_M11_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M11_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M11_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M11_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M11_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M11_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M11_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M11_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M11_AXIS_TID_WIDTH { PARAM_VALUE.C_M11_AXIS_TID_WIDTH } {
	# Procedure called to update C_M11_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M11_AXIS_TID_WIDTH { PARAM_VALUE.C_M11_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M11_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M11_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M11_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M11_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M11_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M11_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M11_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M12_AXIS_HAS_TKEEP { PARAM_VALUE.C_M12_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M12_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M12_AXIS_HAS_TKEEP { PARAM_VALUE.C_M12_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M12_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M12_AXIS_HAS_TLAST { PARAM_VALUE.C_M12_AXIS_HAS_TLAST } {
	# Procedure called to update C_M12_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M12_AXIS_HAS_TLAST { PARAM_VALUE.C_M12_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M12_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M12_AXIS_HAS_TREADY { PARAM_VALUE.C_M12_AXIS_HAS_TREADY } {
	# Procedure called to update C_M12_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M12_AXIS_HAS_TREADY { PARAM_VALUE.C_M12_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M12_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M12_AXIS_HAS_TSTRB { PARAM_VALUE.C_M12_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M12_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M12_AXIS_HAS_TSTRB { PARAM_VALUE.C_M12_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M12_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M12_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M12_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M12_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M12_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M12_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M12_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M12_AXIS_TID_WIDTH { PARAM_VALUE.C_M12_AXIS_TID_WIDTH } {
	# Procedure called to update C_M12_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M12_AXIS_TID_WIDTH { PARAM_VALUE.C_M12_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M12_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M12_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M12_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M12_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M12_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M12_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M12_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M13_AXIS_HAS_TKEEP { PARAM_VALUE.C_M13_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M13_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M13_AXIS_HAS_TKEEP { PARAM_VALUE.C_M13_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M13_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M13_AXIS_HAS_TLAST { PARAM_VALUE.C_M13_AXIS_HAS_TLAST } {
	# Procedure called to update C_M13_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M13_AXIS_HAS_TLAST { PARAM_VALUE.C_M13_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M13_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M13_AXIS_HAS_TREADY { PARAM_VALUE.C_M13_AXIS_HAS_TREADY } {
	# Procedure called to update C_M13_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M13_AXIS_HAS_TREADY { PARAM_VALUE.C_M13_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M13_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M13_AXIS_HAS_TSTRB { PARAM_VALUE.C_M13_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M13_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M13_AXIS_HAS_TSTRB { PARAM_VALUE.C_M13_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M13_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M13_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M13_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M13_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M13_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M13_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M13_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M13_AXIS_TID_WIDTH { PARAM_VALUE.C_M13_AXIS_TID_WIDTH } {
	# Procedure called to update C_M13_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M13_AXIS_TID_WIDTH { PARAM_VALUE.C_M13_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M13_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M13_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M13_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M13_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M13_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M13_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M13_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M14_AXIS_HAS_TKEEP { PARAM_VALUE.C_M14_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M14_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M14_AXIS_HAS_TKEEP { PARAM_VALUE.C_M14_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M14_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M14_AXIS_HAS_TLAST { PARAM_VALUE.C_M14_AXIS_HAS_TLAST } {
	# Procedure called to update C_M14_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M14_AXIS_HAS_TLAST { PARAM_VALUE.C_M14_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M14_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M14_AXIS_HAS_TREADY { PARAM_VALUE.C_M14_AXIS_HAS_TREADY } {
	# Procedure called to update C_M14_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M14_AXIS_HAS_TREADY { PARAM_VALUE.C_M14_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M14_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M14_AXIS_HAS_TSTRB { PARAM_VALUE.C_M14_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M14_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M14_AXIS_HAS_TSTRB { PARAM_VALUE.C_M14_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M14_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M14_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M14_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M14_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M14_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M14_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M14_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M14_AXIS_TID_WIDTH { PARAM_VALUE.C_M14_AXIS_TID_WIDTH } {
	# Procedure called to update C_M14_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M14_AXIS_TID_WIDTH { PARAM_VALUE.C_M14_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M14_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M14_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M14_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M14_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M14_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M14_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M14_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M15_AXIS_HAS_TKEEP { PARAM_VALUE.C_M15_AXIS_HAS_TKEEP } {
	# Procedure called to update C_M15_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M15_AXIS_HAS_TKEEP { PARAM_VALUE.C_M15_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_M15_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M15_AXIS_HAS_TLAST { PARAM_VALUE.C_M15_AXIS_HAS_TLAST } {
	# Procedure called to update C_M15_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M15_AXIS_HAS_TLAST { PARAM_VALUE.C_M15_AXIS_HAS_TLAST } {
	# Procedure called to validate C_M15_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M15_AXIS_HAS_TREADY { PARAM_VALUE.C_M15_AXIS_HAS_TREADY } {
	# Procedure called to update C_M15_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M15_AXIS_HAS_TREADY { PARAM_VALUE.C_M15_AXIS_HAS_TREADY } {
	# Procedure called to validate C_M15_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M15_AXIS_HAS_TSTRB { PARAM_VALUE.C_M15_AXIS_HAS_TSTRB } {
	# Procedure called to update C_M15_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M15_AXIS_HAS_TSTRB { PARAM_VALUE.C_M15_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_M15_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M15_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M15_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M15_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M15_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M15_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M15_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M15_AXIS_TID_WIDTH { PARAM_VALUE.C_M15_AXIS_TID_WIDTH } {
	# Procedure called to update C_M15_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M15_AXIS_TID_WIDTH { PARAM_VALUE.C_M15_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M15_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M15_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M15_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M15_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M15_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M15_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M15_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TKEEP { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TKEEP } {
	# Procedure called to update C_M_STM_C2H_A_AXI_S_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TKEEP { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TKEEP } {
	# Procedure called to validate C_M_STM_C2H_A_AXI_S_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TLAST { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TLAST } {
	# Procedure called to update C_M_STM_C2H_A_AXI_S_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TLAST { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TLAST } {
	# Procedure called to validate C_M_STM_C2H_A_AXI_S_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TREADY { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TREADY } {
	# Procedure called to update C_M_STM_C2H_A_AXI_S_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TREADY { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TREADY } {
	# Procedure called to validate C_M_STM_C2H_A_AXI_S_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TSTRB { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TSTRB } {
	# Procedure called to update C_M_STM_C2H_A_AXI_S_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TSTRB { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_HAS_TSTRB } {
	# Procedure called to validate C_M_STM_C2H_A_AXI_S_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDEST_WIDTH { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDEST_WIDTH } {
	# Procedure called to update C_M_STM_C2H_A_AXI_S_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDEST_WIDTH { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDEST_WIDTH } {
	# Procedure called to validate C_M_STM_C2H_A_AXI_S_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TID_WIDTH { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TID_WIDTH } {
	# Procedure called to update C_M_STM_C2H_A_AXI_S_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TID_WIDTH { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TID_WIDTH } {
	# Procedure called to validate C_M_STM_C2H_A_AXI_S_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TUSER_WIDTH { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TUSER_WIDTH } {
	# Procedure called to update C_M_STM_C2H_A_AXI_S_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TUSER_WIDTH { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TUSER_WIDTH } {
	# Procedure called to validate C_M_STM_C2H_A_AXI_S_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_HAS_TKEEP { PARAM_VALUE.C_S00_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S00_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_HAS_TKEEP { PARAM_VALUE.C_S00_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S00_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_HAS_TLAST { PARAM_VALUE.C_S00_AXIS_HAS_TLAST } {
	# Procedure called to update C_S00_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_HAS_TLAST { PARAM_VALUE.C_S00_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S00_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_HAS_TREADY { PARAM_VALUE.C_S00_AXIS_HAS_TREADY } {
	# Procedure called to update C_S00_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_HAS_TREADY { PARAM_VALUE.C_S00_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S00_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_HAS_TSTRB { PARAM_VALUE.C_S00_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S00_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_HAS_TSTRB { PARAM_VALUE.C_S00_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S00_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S00_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S00_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S00_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S00_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_TID_WIDTH { PARAM_VALUE.C_S00_AXIS_TID_WIDTH } {
	# Procedure called to update C_S00_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_TID_WIDTH { PARAM_VALUE.C_S00_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S00_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S00_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S00_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S00_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S00_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S01_AXIS_HAS_TKEEP { PARAM_VALUE.C_S01_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S01_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXIS_HAS_TKEEP { PARAM_VALUE.C_S01_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S01_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S01_AXIS_HAS_TLAST { PARAM_VALUE.C_S01_AXIS_HAS_TLAST } {
	# Procedure called to update C_S01_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXIS_HAS_TLAST { PARAM_VALUE.C_S01_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S01_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S01_AXIS_HAS_TREADY { PARAM_VALUE.C_S01_AXIS_HAS_TREADY } {
	# Procedure called to update C_S01_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXIS_HAS_TREADY { PARAM_VALUE.C_S01_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S01_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S01_AXIS_HAS_TSTRB { PARAM_VALUE.C_S01_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S01_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXIS_HAS_TSTRB { PARAM_VALUE.C_S01_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S01_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S01_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S01_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S01_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S01_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S01_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S01_AXIS_TID_WIDTH { PARAM_VALUE.C_S01_AXIS_TID_WIDTH } {
	# Procedure called to update C_S01_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXIS_TID_WIDTH { PARAM_VALUE.C_S01_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S01_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S01_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S01_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S01_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S01_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S01_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXIS_HAS_TKEEP { PARAM_VALUE.C_S02_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S02_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXIS_HAS_TKEEP { PARAM_VALUE.C_S02_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S02_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S02_AXIS_HAS_TLAST { PARAM_VALUE.C_S02_AXIS_HAS_TLAST } {
	# Procedure called to update C_S02_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXIS_HAS_TLAST { PARAM_VALUE.C_S02_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S02_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S02_AXIS_HAS_TREADY { PARAM_VALUE.C_S02_AXIS_HAS_TREADY } {
	# Procedure called to update C_S02_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXIS_HAS_TREADY { PARAM_VALUE.C_S02_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S02_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S02_AXIS_HAS_TSTRB { PARAM_VALUE.C_S02_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S02_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXIS_HAS_TSTRB { PARAM_VALUE.C_S02_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S02_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S02_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S02_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S02_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S02_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S02_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXIS_TID_WIDTH { PARAM_VALUE.C_S02_AXIS_TID_WIDTH } {
	# Procedure called to update C_S02_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXIS_TID_WIDTH { PARAM_VALUE.C_S02_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S02_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S02_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S02_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S02_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S02_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S03_AXIS_HAS_TKEEP { PARAM_VALUE.C_S03_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S03_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S03_AXIS_HAS_TKEEP { PARAM_VALUE.C_S03_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S03_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S03_AXIS_HAS_TLAST { PARAM_VALUE.C_S03_AXIS_HAS_TLAST } {
	# Procedure called to update C_S03_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S03_AXIS_HAS_TLAST { PARAM_VALUE.C_S03_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S03_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S03_AXIS_HAS_TREADY { PARAM_VALUE.C_S03_AXIS_HAS_TREADY } {
	# Procedure called to update C_S03_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S03_AXIS_HAS_TREADY { PARAM_VALUE.C_S03_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S03_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S03_AXIS_HAS_TSTRB { PARAM_VALUE.C_S03_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S03_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S03_AXIS_HAS_TSTRB { PARAM_VALUE.C_S03_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S03_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S03_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S03_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S03_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S03_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S03_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S03_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S03_AXIS_TID_WIDTH { PARAM_VALUE.C_S03_AXIS_TID_WIDTH } {
	# Procedure called to update C_S03_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S03_AXIS_TID_WIDTH { PARAM_VALUE.C_S03_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S03_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S03_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S03_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S03_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S03_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S03_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S03_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S04_AXIS_HAS_TKEEP { PARAM_VALUE.C_S04_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S04_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S04_AXIS_HAS_TKEEP { PARAM_VALUE.C_S04_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S04_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S04_AXIS_HAS_TLAST { PARAM_VALUE.C_S04_AXIS_HAS_TLAST } {
	# Procedure called to update C_S04_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S04_AXIS_HAS_TLAST { PARAM_VALUE.C_S04_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S04_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S04_AXIS_HAS_TREADY { PARAM_VALUE.C_S04_AXIS_HAS_TREADY } {
	# Procedure called to update C_S04_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S04_AXIS_HAS_TREADY { PARAM_VALUE.C_S04_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S04_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S04_AXIS_HAS_TSTRB { PARAM_VALUE.C_S04_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S04_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S04_AXIS_HAS_TSTRB { PARAM_VALUE.C_S04_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S04_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S04_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S04_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S04_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S04_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S04_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S04_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S04_AXIS_TID_WIDTH { PARAM_VALUE.C_S04_AXIS_TID_WIDTH } {
	# Procedure called to update C_S04_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S04_AXIS_TID_WIDTH { PARAM_VALUE.C_S04_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S04_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S04_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S04_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S04_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S04_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S04_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S04_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S05_AXIS_HAS_TKEEP { PARAM_VALUE.C_S05_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S05_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S05_AXIS_HAS_TKEEP { PARAM_VALUE.C_S05_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S05_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S05_AXIS_HAS_TLAST { PARAM_VALUE.C_S05_AXIS_HAS_TLAST } {
	# Procedure called to update C_S05_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S05_AXIS_HAS_TLAST { PARAM_VALUE.C_S05_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S05_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S05_AXIS_HAS_TREADY { PARAM_VALUE.C_S05_AXIS_HAS_TREADY } {
	# Procedure called to update C_S05_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S05_AXIS_HAS_TREADY { PARAM_VALUE.C_S05_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S05_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S05_AXIS_HAS_TSTRB { PARAM_VALUE.C_S05_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S05_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S05_AXIS_HAS_TSTRB { PARAM_VALUE.C_S05_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S05_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S05_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S05_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S05_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S05_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S05_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S05_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S05_AXIS_TID_WIDTH { PARAM_VALUE.C_S05_AXIS_TID_WIDTH } {
	# Procedure called to update C_S05_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S05_AXIS_TID_WIDTH { PARAM_VALUE.C_S05_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S05_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S05_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S05_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S05_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S05_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S05_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S05_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S06_AXIS_HAS_TKEEP { PARAM_VALUE.C_S06_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S06_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S06_AXIS_HAS_TKEEP { PARAM_VALUE.C_S06_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S06_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S06_AXIS_HAS_TLAST { PARAM_VALUE.C_S06_AXIS_HAS_TLAST } {
	# Procedure called to update C_S06_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S06_AXIS_HAS_TLAST { PARAM_VALUE.C_S06_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S06_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S06_AXIS_HAS_TREADY { PARAM_VALUE.C_S06_AXIS_HAS_TREADY } {
	# Procedure called to update C_S06_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S06_AXIS_HAS_TREADY { PARAM_VALUE.C_S06_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S06_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S06_AXIS_HAS_TSTRB { PARAM_VALUE.C_S06_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S06_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S06_AXIS_HAS_TSTRB { PARAM_VALUE.C_S06_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S06_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S06_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S06_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S06_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S06_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S06_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S06_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S06_AXIS_TID_WIDTH { PARAM_VALUE.C_S06_AXIS_TID_WIDTH } {
	# Procedure called to update C_S06_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S06_AXIS_TID_WIDTH { PARAM_VALUE.C_S06_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S06_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S06_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S06_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S06_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S06_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S06_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S06_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S07_AXIS_HAS_TKEEP { PARAM_VALUE.C_S07_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S07_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S07_AXIS_HAS_TKEEP { PARAM_VALUE.C_S07_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S07_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S07_AXIS_HAS_TLAST { PARAM_VALUE.C_S07_AXIS_HAS_TLAST } {
	# Procedure called to update C_S07_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S07_AXIS_HAS_TLAST { PARAM_VALUE.C_S07_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S07_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S07_AXIS_HAS_TREADY { PARAM_VALUE.C_S07_AXIS_HAS_TREADY } {
	# Procedure called to update C_S07_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S07_AXIS_HAS_TREADY { PARAM_VALUE.C_S07_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S07_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S07_AXIS_HAS_TSTRB { PARAM_VALUE.C_S07_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S07_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S07_AXIS_HAS_TSTRB { PARAM_VALUE.C_S07_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S07_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S07_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S07_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S07_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S07_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S07_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S07_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S07_AXIS_TID_WIDTH { PARAM_VALUE.C_S07_AXIS_TID_WIDTH } {
	# Procedure called to update C_S07_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S07_AXIS_TID_WIDTH { PARAM_VALUE.C_S07_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S07_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S07_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S07_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S07_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S07_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S07_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S07_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S08_AXIS_HAS_TKEEP { PARAM_VALUE.C_S08_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S08_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S08_AXIS_HAS_TKEEP { PARAM_VALUE.C_S08_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S08_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S08_AXIS_HAS_TLAST { PARAM_VALUE.C_S08_AXIS_HAS_TLAST } {
	# Procedure called to update C_S08_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S08_AXIS_HAS_TLAST { PARAM_VALUE.C_S08_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S08_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S08_AXIS_HAS_TREADY { PARAM_VALUE.C_S08_AXIS_HAS_TREADY } {
	# Procedure called to update C_S08_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S08_AXIS_HAS_TREADY { PARAM_VALUE.C_S08_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S08_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S08_AXIS_HAS_TSTRB { PARAM_VALUE.C_S08_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S08_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S08_AXIS_HAS_TSTRB { PARAM_VALUE.C_S08_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S08_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S08_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S08_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S08_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S08_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S08_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S08_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S08_AXIS_TID_WIDTH { PARAM_VALUE.C_S08_AXIS_TID_WIDTH } {
	# Procedure called to update C_S08_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S08_AXIS_TID_WIDTH { PARAM_VALUE.C_S08_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S08_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S08_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S08_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S08_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S08_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S08_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S08_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S09_AXIS_HAS_TKEEP { PARAM_VALUE.C_S09_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S09_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S09_AXIS_HAS_TKEEP { PARAM_VALUE.C_S09_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S09_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S09_AXIS_HAS_TLAST { PARAM_VALUE.C_S09_AXIS_HAS_TLAST } {
	# Procedure called to update C_S09_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S09_AXIS_HAS_TLAST { PARAM_VALUE.C_S09_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S09_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S09_AXIS_HAS_TREADY { PARAM_VALUE.C_S09_AXIS_HAS_TREADY } {
	# Procedure called to update C_S09_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S09_AXIS_HAS_TREADY { PARAM_VALUE.C_S09_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S09_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S09_AXIS_HAS_TSTRB { PARAM_VALUE.C_S09_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S09_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S09_AXIS_HAS_TSTRB { PARAM_VALUE.C_S09_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S09_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S09_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S09_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S09_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S09_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S09_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S09_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S09_AXIS_TID_WIDTH { PARAM_VALUE.C_S09_AXIS_TID_WIDTH } {
	# Procedure called to update C_S09_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S09_AXIS_TID_WIDTH { PARAM_VALUE.C_S09_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S09_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S09_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S09_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S09_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S09_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S09_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S09_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S10_AXIS_HAS_TKEEP { PARAM_VALUE.C_S10_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S10_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S10_AXIS_HAS_TKEEP { PARAM_VALUE.C_S10_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S10_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S10_AXIS_HAS_TLAST { PARAM_VALUE.C_S10_AXIS_HAS_TLAST } {
	# Procedure called to update C_S10_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S10_AXIS_HAS_TLAST { PARAM_VALUE.C_S10_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S10_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S10_AXIS_HAS_TREADY { PARAM_VALUE.C_S10_AXIS_HAS_TREADY } {
	# Procedure called to update C_S10_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S10_AXIS_HAS_TREADY { PARAM_VALUE.C_S10_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S10_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S10_AXIS_HAS_TSTRB { PARAM_VALUE.C_S10_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S10_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S10_AXIS_HAS_TSTRB { PARAM_VALUE.C_S10_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S10_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S10_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S10_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S10_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S10_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S10_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S10_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S10_AXIS_TID_WIDTH { PARAM_VALUE.C_S10_AXIS_TID_WIDTH } {
	# Procedure called to update C_S10_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S10_AXIS_TID_WIDTH { PARAM_VALUE.C_S10_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S10_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S10_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S10_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S10_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S10_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S10_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S10_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S11_AXIS_HAS_TKEEP { PARAM_VALUE.C_S11_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S11_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S11_AXIS_HAS_TKEEP { PARAM_VALUE.C_S11_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S11_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S11_AXIS_HAS_TLAST { PARAM_VALUE.C_S11_AXIS_HAS_TLAST } {
	# Procedure called to update C_S11_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S11_AXIS_HAS_TLAST { PARAM_VALUE.C_S11_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S11_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S11_AXIS_HAS_TREADY { PARAM_VALUE.C_S11_AXIS_HAS_TREADY } {
	# Procedure called to update C_S11_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S11_AXIS_HAS_TREADY { PARAM_VALUE.C_S11_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S11_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S11_AXIS_HAS_TSTRB { PARAM_VALUE.C_S11_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S11_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S11_AXIS_HAS_TSTRB { PARAM_VALUE.C_S11_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S11_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S11_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S11_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S11_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S11_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S11_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S11_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S11_AXIS_TID_WIDTH { PARAM_VALUE.C_S11_AXIS_TID_WIDTH } {
	# Procedure called to update C_S11_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S11_AXIS_TID_WIDTH { PARAM_VALUE.C_S11_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S11_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S11_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S11_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S11_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S11_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S11_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S11_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S12_AXIS_HAS_TKEEP { PARAM_VALUE.C_S12_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S12_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S12_AXIS_HAS_TKEEP { PARAM_VALUE.C_S12_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S12_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S12_AXIS_HAS_TLAST { PARAM_VALUE.C_S12_AXIS_HAS_TLAST } {
	# Procedure called to update C_S12_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S12_AXIS_HAS_TLAST { PARAM_VALUE.C_S12_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S12_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S12_AXIS_HAS_TREADY { PARAM_VALUE.C_S12_AXIS_HAS_TREADY } {
	# Procedure called to update C_S12_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S12_AXIS_HAS_TREADY { PARAM_VALUE.C_S12_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S12_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S12_AXIS_HAS_TSTRB { PARAM_VALUE.C_S12_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S12_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S12_AXIS_HAS_TSTRB { PARAM_VALUE.C_S12_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S12_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S12_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S12_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S12_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S12_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S12_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S12_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S12_AXIS_TID_WIDTH { PARAM_VALUE.C_S12_AXIS_TID_WIDTH } {
	# Procedure called to update C_S12_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S12_AXIS_TID_WIDTH { PARAM_VALUE.C_S12_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S12_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S12_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S12_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S12_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S12_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S12_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S12_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S13_AXIS_HAS_TKEEP { PARAM_VALUE.C_S13_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S13_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S13_AXIS_HAS_TKEEP { PARAM_VALUE.C_S13_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S13_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S13_AXIS_HAS_TLAST { PARAM_VALUE.C_S13_AXIS_HAS_TLAST } {
	# Procedure called to update C_S13_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S13_AXIS_HAS_TLAST { PARAM_VALUE.C_S13_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S13_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S13_AXIS_HAS_TREADY { PARAM_VALUE.C_S13_AXIS_HAS_TREADY } {
	# Procedure called to update C_S13_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S13_AXIS_HAS_TREADY { PARAM_VALUE.C_S13_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S13_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S13_AXIS_HAS_TSTRB { PARAM_VALUE.C_S13_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S13_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S13_AXIS_HAS_TSTRB { PARAM_VALUE.C_S13_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S13_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S13_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S13_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S13_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S13_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S13_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S13_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S13_AXIS_TID_WIDTH { PARAM_VALUE.C_S13_AXIS_TID_WIDTH } {
	# Procedure called to update C_S13_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S13_AXIS_TID_WIDTH { PARAM_VALUE.C_S13_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S13_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S13_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S13_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S13_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S13_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S13_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S13_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S14_AXIS_HAS_TKEEP { PARAM_VALUE.C_S14_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S14_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S14_AXIS_HAS_TKEEP { PARAM_VALUE.C_S14_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S14_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S14_AXIS_HAS_TLAST { PARAM_VALUE.C_S14_AXIS_HAS_TLAST } {
	# Procedure called to update C_S14_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S14_AXIS_HAS_TLAST { PARAM_VALUE.C_S14_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S14_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S14_AXIS_HAS_TREADY { PARAM_VALUE.C_S14_AXIS_HAS_TREADY } {
	# Procedure called to update C_S14_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S14_AXIS_HAS_TREADY { PARAM_VALUE.C_S14_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S14_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S14_AXIS_HAS_TSTRB { PARAM_VALUE.C_S14_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S14_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S14_AXIS_HAS_TSTRB { PARAM_VALUE.C_S14_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S14_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S14_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S14_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S14_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S14_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S14_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S14_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S14_AXIS_TID_WIDTH { PARAM_VALUE.C_S14_AXIS_TID_WIDTH } {
	# Procedure called to update C_S14_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S14_AXIS_TID_WIDTH { PARAM_VALUE.C_S14_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S14_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S14_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S14_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S14_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S14_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S14_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S14_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S15_AXIS_HAS_TKEEP { PARAM_VALUE.C_S15_AXIS_HAS_TKEEP } {
	# Procedure called to update C_S15_AXIS_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S15_AXIS_HAS_TKEEP { PARAM_VALUE.C_S15_AXIS_HAS_TKEEP } {
	# Procedure called to validate C_S15_AXIS_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S15_AXIS_HAS_TLAST { PARAM_VALUE.C_S15_AXIS_HAS_TLAST } {
	# Procedure called to update C_S15_AXIS_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S15_AXIS_HAS_TLAST { PARAM_VALUE.C_S15_AXIS_HAS_TLAST } {
	# Procedure called to validate C_S15_AXIS_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S15_AXIS_HAS_TREADY { PARAM_VALUE.C_S15_AXIS_HAS_TREADY } {
	# Procedure called to update C_S15_AXIS_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S15_AXIS_HAS_TREADY { PARAM_VALUE.C_S15_AXIS_HAS_TREADY } {
	# Procedure called to validate C_S15_AXIS_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S15_AXIS_HAS_TSTRB { PARAM_VALUE.C_S15_AXIS_HAS_TSTRB } {
	# Procedure called to update C_S15_AXIS_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S15_AXIS_HAS_TSTRB { PARAM_VALUE.C_S15_AXIS_HAS_TSTRB } {
	# Procedure called to validate C_S15_AXIS_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S15_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S15_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S15_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S15_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S15_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S15_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S15_AXIS_TID_WIDTH { PARAM_VALUE.C_S15_AXIS_TID_WIDTH } {
	# Procedure called to update C_S15_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S15_AXIS_TID_WIDTH { PARAM_VALUE.C_S15_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S15_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S15_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S15_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S15_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S15_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S15_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S15_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TKEEP { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TKEEP } {
	# Procedure called to update C_S_STM_H2C_A_AXI_S_HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TKEEP { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TKEEP } {
	# Procedure called to validate C_S_STM_H2C_A_AXI_S_HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TLAST { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TLAST } {
	# Procedure called to update C_S_STM_H2C_A_AXI_S_HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TLAST { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TLAST } {
	# Procedure called to validate C_S_STM_H2C_A_AXI_S_HAS_TLAST
	return true
}

proc update_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TREADY { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TREADY } {
	# Procedure called to update C_S_STM_H2C_A_AXI_S_HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TREADY { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TREADY } {
	# Procedure called to validate C_S_STM_H2C_A_AXI_S_HAS_TREADY
	return true
}

proc update_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TSTRB { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TSTRB } {
	# Procedure called to update C_S_STM_H2C_A_AXI_S_HAS_TSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TSTRB { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_HAS_TSTRB } {
	# Procedure called to validate C_S_STM_H2C_A_AXI_S_HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDEST_WIDTH { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDEST_WIDTH } {
	# Procedure called to update C_S_STM_H2C_A_AXI_S_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDEST_WIDTH { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDEST_WIDTH } {
	# Procedure called to validate C_S_STM_H2C_A_AXI_S_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TID_WIDTH { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TID_WIDTH } {
	# Procedure called to update C_S_STM_H2C_A_AXI_S_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TID_WIDTH { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TID_WIDTH } {
	# Procedure called to validate C_S_STM_H2C_A_AXI_S_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TUSER_WIDTH { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TUSER_WIDTH } {
	# Procedure called to update C_S_STM_H2C_A_AXI_S_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TUSER_WIDTH { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TUSER_WIDTH } {
	# Procedure called to validate C_S_STM_H2C_A_AXI_S_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.FLOW_ID00 { PARAM_VALUE.FLOW_ID00 } {
	# Procedure called to update FLOW_ID00 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID00 { PARAM_VALUE.FLOW_ID00 } {
	# Procedure called to validate FLOW_ID00
	return true
}

proc update_PARAM_VALUE.FLOW_ID01 { PARAM_VALUE.FLOW_ID01 } {
	# Procedure called to update FLOW_ID01 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID01 { PARAM_VALUE.FLOW_ID01 } {
	# Procedure called to validate FLOW_ID01
	return true
}

proc update_PARAM_VALUE.FLOW_ID02 { PARAM_VALUE.FLOW_ID02 } {
	# Procedure called to update FLOW_ID02 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID02 { PARAM_VALUE.FLOW_ID02 } {
	# Procedure called to validate FLOW_ID02
	return true
}

proc update_PARAM_VALUE.FLOW_ID03 { PARAM_VALUE.FLOW_ID03 } {
	# Procedure called to update FLOW_ID03 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID03 { PARAM_VALUE.FLOW_ID03 } {
	# Procedure called to validate FLOW_ID03
	return true
}

proc update_PARAM_VALUE.FLOW_ID04 { PARAM_VALUE.FLOW_ID04 } {
	# Procedure called to update FLOW_ID04 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID04 { PARAM_VALUE.FLOW_ID04 } {
	# Procedure called to validate FLOW_ID04
	return true
}

proc update_PARAM_VALUE.FLOW_ID05 { PARAM_VALUE.FLOW_ID05 } {
	# Procedure called to update FLOW_ID05 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID05 { PARAM_VALUE.FLOW_ID05 } {
	# Procedure called to validate FLOW_ID05
	return true
}

proc update_PARAM_VALUE.FLOW_ID06 { PARAM_VALUE.FLOW_ID06 } {
	# Procedure called to update FLOW_ID06 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID06 { PARAM_VALUE.FLOW_ID06 } {
	# Procedure called to validate FLOW_ID06
	return true
}

proc update_PARAM_VALUE.FLOW_ID07 { PARAM_VALUE.FLOW_ID07 } {
	# Procedure called to update FLOW_ID07 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID07 { PARAM_VALUE.FLOW_ID07 } {
	# Procedure called to validate FLOW_ID07
	return true
}

proc update_PARAM_VALUE.FLOW_ID08 { PARAM_VALUE.FLOW_ID08 } {
	# Procedure called to update FLOW_ID08 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID08 { PARAM_VALUE.FLOW_ID08 } {
	# Procedure called to validate FLOW_ID08
	return true
}

proc update_PARAM_VALUE.FLOW_ID09 { PARAM_VALUE.FLOW_ID09 } {
	# Procedure called to update FLOW_ID09 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID09 { PARAM_VALUE.FLOW_ID09 } {
	# Procedure called to validate FLOW_ID09
	return true
}

proc update_PARAM_VALUE.FLOW_ID10 { PARAM_VALUE.FLOW_ID10 } {
	# Procedure called to update FLOW_ID10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID10 { PARAM_VALUE.FLOW_ID10 } {
	# Procedure called to validate FLOW_ID10
	return true
}

proc update_PARAM_VALUE.FLOW_ID11 { PARAM_VALUE.FLOW_ID11 } {
	# Procedure called to update FLOW_ID11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID11 { PARAM_VALUE.FLOW_ID11 } {
	# Procedure called to validate FLOW_ID11
	return true
}

proc update_PARAM_VALUE.FLOW_ID12 { PARAM_VALUE.FLOW_ID12 } {
	# Procedure called to update FLOW_ID12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID12 { PARAM_VALUE.FLOW_ID12 } {
	# Procedure called to validate FLOW_ID12
	return true
}

proc update_PARAM_VALUE.FLOW_ID13 { PARAM_VALUE.FLOW_ID13 } {
	# Procedure called to update FLOW_ID13 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID13 { PARAM_VALUE.FLOW_ID13 } {
	# Procedure called to validate FLOW_ID13
	return true
}

proc update_PARAM_VALUE.FLOW_ID14 { PARAM_VALUE.FLOW_ID14 } {
	# Procedure called to update FLOW_ID14 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID14 { PARAM_VALUE.FLOW_ID14 } {
	# Procedure called to validate FLOW_ID14
	return true
}

proc update_PARAM_VALUE.FLOW_ID15 { PARAM_VALUE.FLOW_ID15 } {
	# Procedure called to update FLOW_ID15 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLOW_ID15 { PARAM_VALUE.FLOW_ID15 } {
	# Procedure called to validate FLOW_ID15
	return true
}

proc update_PARAM_VALUE.NUM_MI { PARAM_VALUE.NUM_MI } {
	# Procedure called to update NUM_MI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_MI { PARAM_VALUE.NUM_MI } {
	# Procedure called to validate NUM_MI
	return true
}

proc update_PARAM_VALUE.NUM_SI { PARAM_VALUE.NUM_SI } {
	# Procedure called to update NUM_SI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_SI { PARAM_VALUE.NUM_SI } {
	# Procedure called to validate NUM_SI
	return true
}

proc update_PARAM_VALUE.ROUTE_ID00 { PARAM_VALUE.ROUTE_ID00 } {
	# Procedure called to update ROUTE_ID00 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID00 { PARAM_VALUE.ROUTE_ID00 } {
	# Procedure called to validate ROUTE_ID00
	return true
}

proc update_PARAM_VALUE.ROUTE_ID01 { PARAM_VALUE.ROUTE_ID01 } {
	# Procedure called to update ROUTE_ID01 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID01 { PARAM_VALUE.ROUTE_ID01 } {
	# Procedure called to validate ROUTE_ID01
	return true
}

proc update_PARAM_VALUE.ROUTE_ID02 { PARAM_VALUE.ROUTE_ID02 } {
	# Procedure called to update ROUTE_ID02 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID02 { PARAM_VALUE.ROUTE_ID02 } {
	# Procedure called to validate ROUTE_ID02
	return true
}

proc update_PARAM_VALUE.ROUTE_ID03 { PARAM_VALUE.ROUTE_ID03 } {
	# Procedure called to update ROUTE_ID03 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID03 { PARAM_VALUE.ROUTE_ID03 } {
	# Procedure called to validate ROUTE_ID03
	return true
}

proc update_PARAM_VALUE.ROUTE_ID04 { PARAM_VALUE.ROUTE_ID04 } {
	# Procedure called to update ROUTE_ID04 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID04 { PARAM_VALUE.ROUTE_ID04 } {
	# Procedure called to validate ROUTE_ID04
	return true
}

proc update_PARAM_VALUE.ROUTE_ID05 { PARAM_VALUE.ROUTE_ID05 } {
	# Procedure called to update ROUTE_ID05 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID05 { PARAM_VALUE.ROUTE_ID05 } {
	# Procedure called to validate ROUTE_ID05
	return true
}

proc update_PARAM_VALUE.ROUTE_ID06 { PARAM_VALUE.ROUTE_ID06 } {
	# Procedure called to update ROUTE_ID06 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID06 { PARAM_VALUE.ROUTE_ID06 } {
	# Procedure called to validate ROUTE_ID06
	return true
}

proc update_PARAM_VALUE.ROUTE_ID07 { PARAM_VALUE.ROUTE_ID07 } {
	# Procedure called to update ROUTE_ID07 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID07 { PARAM_VALUE.ROUTE_ID07 } {
	# Procedure called to validate ROUTE_ID07
	return true
}

proc update_PARAM_VALUE.ROUTE_ID08 { PARAM_VALUE.ROUTE_ID08 } {
	# Procedure called to update ROUTE_ID08 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID08 { PARAM_VALUE.ROUTE_ID08 } {
	# Procedure called to validate ROUTE_ID08
	return true
}

proc update_PARAM_VALUE.ROUTE_ID09 { PARAM_VALUE.ROUTE_ID09 } {
	# Procedure called to update ROUTE_ID09 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID09 { PARAM_VALUE.ROUTE_ID09 } {
	# Procedure called to validate ROUTE_ID09
	return true
}

proc update_PARAM_VALUE.ROUTE_ID10 { PARAM_VALUE.ROUTE_ID10 } {
	# Procedure called to update ROUTE_ID10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID10 { PARAM_VALUE.ROUTE_ID10 } {
	# Procedure called to validate ROUTE_ID10
	return true
}

proc update_PARAM_VALUE.ROUTE_ID11 { PARAM_VALUE.ROUTE_ID11 } {
	# Procedure called to update ROUTE_ID11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID11 { PARAM_VALUE.ROUTE_ID11 } {
	# Procedure called to validate ROUTE_ID11
	return true
}

proc update_PARAM_VALUE.ROUTE_ID12 { PARAM_VALUE.ROUTE_ID12 } {
	# Procedure called to update ROUTE_ID12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID12 { PARAM_VALUE.ROUTE_ID12 } {
	# Procedure called to validate ROUTE_ID12
	return true
}

proc update_PARAM_VALUE.ROUTE_ID13 { PARAM_VALUE.ROUTE_ID13 } {
	# Procedure called to update ROUTE_ID13 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID13 { PARAM_VALUE.ROUTE_ID13 } {
	# Procedure called to validate ROUTE_ID13
	return true
}

proc update_PARAM_VALUE.ROUTE_ID14 { PARAM_VALUE.ROUTE_ID14 } {
	# Procedure called to update ROUTE_ID14 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID14 { PARAM_VALUE.ROUTE_ID14 } {
	# Procedure called to validate ROUTE_ID14
	return true
}

proc update_PARAM_VALUE.ROUTE_ID15 { PARAM_VALUE.ROUTE_ID15 } {
	# Procedure called to update ROUTE_ID15 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTE_ID15 { PARAM_VALUE.ROUTE_ID15 } {
	# Procedure called to validate ROUTE_ID15
	return true
}

proc update_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDATA_WIDTH { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDATA_WIDTH } {
	# Procedure called to update C_M_STM_C2H_A_AXI_S_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDATA_WIDTH { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDATA_WIDTH } {
	# Procedure called to validate C_M_STM_C2H_A_AXI_S_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_START_COUNT { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_START_COUNT } {
	# Procedure called to update C_M_STM_C2H_A_AXI_S_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_STM_C2H_A_AXI_S_START_COUNT { PARAM_VALUE.C_M_STM_C2H_A_AXI_S_START_COUNT } {
	# Procedure called to validate C_M_STM_C2H_A_AXI_S_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_M05_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M05_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M05_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M05_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M05_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M05_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M05_AXIS_START_COUNT { PARAM_VALUE.C_M05_AXIS_START_COUNT } {
	# Procedure called to update C_M05_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M05_AXIS_START_COUNT { PARAM_VALUE.C_M05_AXIS_START_COUNT } {
	# Procedure called to validate C_M05_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDATA_WIDTH { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDATA_WIDTH } {
	# Procedure called to update C_S_STM_H2C_A_AXI_S_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDATA_WIDTH { PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDATA_WIDTH } {
	# Procedure called to validate C_S_STM_H2C_A_AXI_S_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M00_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M00_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_START_COUNT { PARAM_VALUE.C_M00_AXIS_START_COUNT } {
	# Procedure called to update C_M00_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_START_COUNT { PARAM_VALUE.C_M00_AXIS_START_COUNT } {
	# Procedure called to validate C_M00_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S00_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S00_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S03_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S03_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S03_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S03_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S03_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S03_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S01_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S01_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S01_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S01_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S01_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M01_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M01_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M01_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M01_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXIS_START_COUNT { PARAM_VALUE.C_M01_AXIS_START_COUNT } {
	# Procedure called to update C_M01_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXIS_START_COUNT { PARAM_VALUE.C_M01_AXIS_START_COUNT } {
	# Procedure called to validate C_M01_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_M02_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M02_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M02_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M02_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M02_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M02_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M02_AXIS_START_COUNT { PARAM_VALUE.C_M02_AXIS_START_COUNT } {
	# Procedure called to update C_M02_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M02_AXIS_START_COUNT { PARAM_VALUE.C_M02_AXIS_START_COUNT } {
	# Procedure called to validate C_M02_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S04_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S04_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S04_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S04_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S04_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S04_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M03_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M03_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M03_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M03_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M03_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M03_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M03_AXIS_START_COUNT { PARAM_VALUE.C_M03_AXIS_START_COUNT } {
	# Procedure called to update C_M03_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M03_AXIS_START_COUNT { PARAM_VALUE.C_M03_AXIS_START_COUNT } {
	# Procedure called to validate C_M03_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S02_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S02_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S02_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S02_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S02_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M04_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M04_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M04_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M04_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M04_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M04_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M04_AXIS_START_COUNT { PARAM_VALUE.C_M04_AXIS_START_COUNT } {
	# Procedure called to update C_M04_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M04_AXIS_START_COUNT { PARAM_VALUE.C_M04_AXIS_START_COUNT } {
	# Procedure called to validate C_M04_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_M06_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M06_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M06_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M06_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M06_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M06_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M06_AXIS_START_COUNT { PARAM_VALUE.C_M06_AXIS_START_COUNT } {
	# Procedure called to update C_M06_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M06_AXIS_START_COUNT { PARAM_VALUE.C_M06_AXIS_START_COUNT } {
	# Procedure called to validate C_M06_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S05_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S05_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S05_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S05_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S05_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S05_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M07_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M07_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M07_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M07_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M07_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M07_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M07_AXIS_START_COUNT { PARAM_VALUE.C_M07_AXIS_START_COUNT } {
	# Procedure called to update C_M07_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M07_AXIS_START_COUNT { PARAM_VALUE.C_M07_AXIS_START_COUNT } {
	# Procedure called to validate C_M07_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S06_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S06_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S06_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S06_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S06_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S06_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S07_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S07_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S07_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S07_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S07_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S07_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S15_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S15_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S15_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S15_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S15_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S15_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M08_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M08_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M08_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M08_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M08_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M08_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M08_AXIS_START_COUNT { PARAM_VALUE.C_M08_AXIS_START_COUNT } {
	# Procedure called to update C_M08_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M08_AXIS_START_COUNT { PARAM_VALUE.C_M08_AXIS_START_COUNT } {
	# Procedure called to validate C_M08_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_M15_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M15_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M15_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M15_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M15_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M15_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M15_AXIS_START_COUNT { PARAM_VALUE.C_M15_AXIS_START_COUNT } {
	# Procedure called to update C_M15_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M15_AXIS_START_COUNT { PARAM_VALUE.C_M15_AXIS_START_COUNT } {
	# Procedure called to validate C_M15_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S14_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S14_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S14_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S14_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S14_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S14_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M14_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M14_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M14_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M14_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M14_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M14_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M14_AXIS_START_COUNT { PARAM_VALUE.C_M14_AXIS_START_COUNT } {
	# Procedure called to update C_M14_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M14_AXIS_START_COUNT { PARAM_VALUE.C_M14_AXIS_START_COUNT } {
	# Procedure called to validate C_M14_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S13_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S13_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S13_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S13_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S13_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S13_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M13_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M13_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M13_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M13_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M13_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M13_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M13_AXIS_START_COUNT { PARAM_VALUE.C_M13_AXIS_START_COUNT } {
	# Procedure called to update C_M13_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M13_AXIS_START_COUNT { PARAM_VALUE.C_M13_AXIS_START_COUNT } {
	# Procedure called to validate C_M13_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S12_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S12_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S12_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S12_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S12_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S12_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M12_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M12_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M12_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M12_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M12_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M12_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M12_AXIS_START_COUNT { PARAM_VALUE.C_M12_AXIS_START_COUNT } {
	# Procedure called to update C_M12_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M12_AXIS_START_COUNT { PARAM_VALUE.C_M12_AXIS_START_COUNT } {
	# Procedure called to validate C_M12_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S11_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S11_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S11_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S11_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S11_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S11_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M11_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M11_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M11_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M11_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M11_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M11_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M11_AXIS_START_COUNT { PARAM_VALUE.C_M11_AXIS_START_COUNT } {
	# Procedure called to update C_M11_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M11_AXIS_START_COUNT { PARAM_VALUE.C_M11_AXIS_START_COUNT } {
	# Procedure called to validate C_M11_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S10_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S10_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S10_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S10_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S10_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S10_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M10_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M10_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M10_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M10_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M10_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M10_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M10_AXIS_START_COUNT { PARAM_VALUE.C_M10_AXIS_START_COUNT } {
	# Procedure called to update C_M10_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M10_AXIS_START_COUNT { PARAM_VALUE.C_M10_AXIS_START_COUNT } {
	# Procedure called to validate C_M10_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S09_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S09_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S09_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S09_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S09_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S09_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M09_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M09_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M09_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M09_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M09_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M09_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M09_AXIS_START_COUNT { PARAM_VALUE.C_M09_AXIS_START_COUNT } {
	# Procedure called to update C_M09_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M09_AXIS_START_COUNT { PARAM_VALUE.C_M09_AXIS_START_COUNT } {
	# Procedure called to validate C_M09_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_S08_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S08_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S08_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S08_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S08_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S08_AXIS_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TUSER_WIDTH { MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TUSER_WIDTH PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TID_WIDTH { MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TID_WIDTH PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TID_WIDTH}] ${MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDEST_WIDTH { MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDEST_WIDTH PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TUSER_WIDTH { MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TUSER_WIDTH PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TID_WIDTH { MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TID_WIDTH PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TID_WIDTH}] ${MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDEST_WIDTH { MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDEST_WIDTH PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXIS_TUSER_WIDTH PARAM_VALUE.C_M00_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M00_AXIS_TID_WIDTH PARAM_VALUE.C_M00_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M00_AXIS_TDEST_WIDTH PARAM_VALUE.C_M00_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S00_AXIS_TUSER_WIDTH PARAM_VALUE.C_S00_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S00_AXIS_TID_WIDTH PARAM_VALUE.C_S00_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S00_AXIS_TDEST_WIDTH PARAM_VALUE.C_S00_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M01_AXIS_TUSER_WIDTH PARAM_VALUE.C_M01_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M01_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M01_AXIS_TID_WIDTH PARAM_VALUE.C_M01_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M01_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M01_AXIS_TDEST_WIDTH PARAM_VALUE.C_M01_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M01_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S01_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S01_AXIS_TUSER_WIDTH PARAM_VALUE.C_S01_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S01_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S01_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S01_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S01_AXIS_TID_WIDTH PARAM_VALUE.C_S01_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S01_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S01_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S01_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S01_AXIS_TDEST_WIDTH PARAM_VALUE.C_S01_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S01_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S01_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M02_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M02_AXIS_TUSER_WIDTH PARAM_VALUE.C_M02_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M02_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M02_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M02_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M02_AXIS_TID_WIDTH PARAM_VALUE.C_M02_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M02_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M02_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M02_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M02_AXIS_TDEST_WIDTH PARAM_VALUE.C_M02_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M02_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M02_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S02_AXIS_TUSER_WIDTH PARAM_VALUE.C_S02_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S02_AXIS_TID_WIDTH PARAM_VALUE.C_S02_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S02_AXIS_TDEST_WIDTH PARAM_VALUE.C_S02_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M03_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M03_AXIS_TUSER_WIDTH PARAM_VALUE.C_M03_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M03_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M03_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M03_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M03_AXIS_TID_WIDTH PARAM_VALUE.C_M03_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M03_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M03_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M03_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M03_AXIS_TDEST_WIDTH PARAM_VALUE.C_M03_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M03_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M03_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S03_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S03_AXIS_TUSER_WIDTH PARAM_VALUE.C_S03_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S03_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S03_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S03_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S03_AXIS_TID_WIDTH PARAM_VALUE.C_S03_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S03_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S03_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S03_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S03_AXIS_TDEST_WIDTH PARAM_VALUE.C_S03_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S03_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S03_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M04_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M04_AXIS_TUSER_WIDTH PARAM_VALUE.C_M04_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M04_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M04_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M04_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M04_AXIS_TID_WIDTH PARAM_VALUE.C_M04_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M04_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M04_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M04_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M04_AXIS_TDEST_WIDTH PARAM_VALUE.C_M04_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M04_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M04_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S04_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S04_AXIS_TUSER_WIDTH PARAM_VALUE.C_S04_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S04_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S04_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S04_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S04_AXIS_TID_WIDTH PARAM_VALUE.C_S04_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S04_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S04_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S04_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S04_AXIS_TDEST_WIDTH PARAM_VALUE.C_S04_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S04_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S04_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M05_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M05_AXIS_TUSER_WIDTH PARAM_VALUE.C_M05_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M05_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M05_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M05_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M05_AXIS_TID_WIDTH PARAM_VALUE.C_M05_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M05_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M05_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M05_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M05_AXIS_TDEST_WIDTH PARAM_VALUE.C_M05_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M05_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M05_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S05_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S05_AXIS_TUSER_WIDTH PARAM_VALUE.C_S05_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S05_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S05_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S05_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S05_AXIS_TID_WIDTH PARAM_VALUE.C_S05_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S05_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S05_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S05_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S05_AXIS_TDEST_WIDTH PARAM_VALUE.C_S05_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S05_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S05_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M06_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M06_AXIS_TUSER_WIDTH PARAM_VALUE.C_M06_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M06_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M06_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M06_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M06_AXIS_TID_WIDTH PARAM_VALUE.C_M06_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M06_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M06_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M06_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M06_AXIS_TDEST_WIDTH PARAM_VALUE.C_M06_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M06_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M06_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S06_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S06_AXIS_TUSER_WIDTH PARAM_VALUE.C_S06_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S06_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S06_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S06_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S06_AXIS_TID_WIDTH PARAM_VALUE.C_S06_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S06_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S06_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S06_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S06_AXIS_TDEST_WIDTH PARAM_VALUE.C_S06_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S06_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S06_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M07_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M07_AXIS_TUSER_WIDTH PARAM_VALUE.C_M07_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M07_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M07_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M07_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M07_AXIS_TID_WIDTH PARAM_VALUE.C_M07_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M07_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M07_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M07_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M07_AXIS_TDEST_WIDTH PARAM_VALUE.C_M07_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M07_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M07_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S07_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S07_AXIS_TUSER_WIDTH PARAM_VALUE.C_S07_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S07_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S07_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S07_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S07_AXIS_TID_WIDTH PARAM_VALUE.C_S07_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S07_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S07_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S07_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S07_AXIS_TDEST_WIDTH PARAM_VALUE.C_S07_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S07_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S07_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M08_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M08_AXIS_TUSER_WIDTH PARAM_VALUE.C_M08_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M08_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M08_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M08_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M08_AXIS_TID_WIDTH PARAM_VALUE.C_M08_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M08_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M08_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M08_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M08_AXIS_TDEST_WIDTH PARAM_VALUE.C_M08_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M08_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M08_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S08_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S08_AXIS_TUSER_WIDTH PARAM_VALUE.C_S08_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S08_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S08_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S08_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S08_AXIS_TID_WIDTH PARAM_VALUE.C_S08_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S08_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S08_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S08_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S08_AXIS_TDEST_WIDTH PARAM_VALUE.C_S08_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S08_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S08_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M09_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M09_AXIS_TUSER_WIDTH PARAM_VALUE.C_M09_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M09_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M09_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M09_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M09_AXIS_TID_WIDTH PARAM_VALUE.C_M09_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M09_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M09_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M09_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M09_AXIS_TDEST_WIDTH PARAM_VALUE.C_M09_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M09_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M09_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S09_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S09_AXIS_TUSER_WIDTH PARAM_VALUE.C_S09_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S09_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S09_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S09_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S09_AXIS_TID_WIDTH PARAM_VALUE.C_S09_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S09_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S09_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S09_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S09_AXIS_TDEST_WIDTH PARAM_VALUE.C_S09_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S09_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S09_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M10_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M10_AXIS_TUSER_WIDTH PARAM_VALUE.C_M10_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M10_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M10_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M10_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M10_AXIS_TID_WIDTH PARAM_VALUE.C_M10_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M10_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M10_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M10_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M10_AXIS_TDEST_WIDTH PARAM_VALUE.C_M10_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M10_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M10_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S10_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S10_AXIS_TUSER_WIDTH PARAM_VALUE.C_S10_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S10_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S10_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S10_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S10_AXIS_TID_WIDTH PARAM_VALUE.C_S10_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S10_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S10_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S10_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S10_AXIS_TDEST_WIDTH PARAM_VALUE.C_S10_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S10_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S10_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M11_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M11_AXIS_TUSER_WIDTH PARAM_VALUE.C_M11_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M11_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M11_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M11_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M11_AXIS_TID_WIDTH PARAM_VALUE.C_M11_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M11_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M11_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M11_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M11_AXIS_TDEST_WIDTH PARAM_VALUE.C_M11_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M11_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M11_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S11_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S11_AXIS_TUSER_WIDTH PARAM_VALUE.C_S11_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S11_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S11_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S11_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S11_AXIS_TID_WIDTH PARAM_VALUE.C_S11_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S11_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S11_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S11_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S11_AXIS_TDEST_WIDTH PARAM_VALUE.C_S11_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S11_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S11_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M12_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M12_AXIS_TUSER_WIDTH PARAM_VALUE.C_M12_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M12_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M12_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M12_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M12_AXIS_TID_WIDTH PARAM_VALUE.C_M12_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M12_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M12_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M12_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M12_AXIS_TDEST_WIDTH PARAM_VALUE.C_M12_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M12_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M12_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S12_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S12_AXIS_TUSER_WIDTH PARAM_VALUE.C_S12_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S12_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S12_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S12_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S12_AXIS_TID_WIDTH PARAM_VALUE.C_S12_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S12_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S12_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S12_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S12_AXIS_TDEST_WIDTH PARAM_VALUE.C_S12_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S12_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S12_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M13_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M13_AXIS_TUSER_WIDTH PARAM_VALUE.C_M13_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M13_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M13_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M13_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M13_AXIS_TID_WIDTH PARAM_VALUE.C_M13_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M13_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M13_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M13_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M13_AXIS_TDEST_WIDTH PARAM_VALUE.C_M13_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M13_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M13_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S13_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S13_AXIS_TUSER_WIDTH PARAM_VALUE.C_S13_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S13_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S13_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S13_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S13_AXIS_TID_WIDTH PARAM_VALUE.C_S13_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S13_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S13_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S13_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S13_AXIS_TDEST_WIDTH PARAM_VALUE.C_S13_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S13_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S13_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M14_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M14_AXIS_TUSER_WIDTH PARAM_VALUE.C_M14_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M14_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M14_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M14_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M14_AXIS_TID_WIDTH PARAM_VALUE.C_M14_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M14_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M14_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M14_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M14_AXIS_TDEST_WIDTH PARAM_VALUE.C_M14_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M14_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M14_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S14_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S14_AXIS_TUSER_WIDTH PARAM_VALUE.C_S14_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S14_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S14_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S14_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S14_AXIS_TID_WIDTH PARAM_VALUE.C_S14_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S14_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S14_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S14_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S14_AXIS_TDEST_WIDTH PARAM_VALUE.C_S14_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S14_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S14_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M15_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M15_AXIS_TUSER_WIDTH PARAM_VALUE.C_M15_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M15_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M15_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M15_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M15_AXIS_TID_WIDTH PARAM_VALUE.C_M15_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M15_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M15_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M15_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M15_AXIS_TDEST_WIDTH PARAM_VALUE.C_M15_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M15_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M15_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S15_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S15_AXIS_TUSER_WIDTH PARAM_VALUE.C_S15_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S15_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S15_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S15_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S15_AXIS_TID_WIDTH PARAM_VALUE.C_S15_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S15_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S15_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S15_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S15_AXIS_TDEST_WIDTH PARAM_VALUE.C_S15_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S15_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S15_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDATA_WIDTH { MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDATA_WIDTH PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_START_COUNT { MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_START_COUNT PARAM_VALUE.C_M_STM_C2H_A_AXI_S_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_STM_C2H_A_AXI_S_START_COUNT}] ${MODELPARAM_VALUE.C_M_STM_C2H_A_AXI_S_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_M05_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M05_AXIS_TDATA_WIDTH PARAM_VALUE.C_M05_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M05_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M05_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M05_AXIS_START_COUNT { MODELPARAM_VALUE.C_M05_AXIS_START_COUNT PARAM_VALUE.C_M05_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M05_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M05_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDATA_WIDTH { MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDATA_WIDTH PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S_STM_H2C_A_AXI_S_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M00_AXIS_TDATA_WIDTH PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_START_COUNT { MODELPARAM_VALUE.C_M00_AXIS_START_COUNT PARAM_VALUE.C_M00_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M00_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S00_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S00_AXIS_TDATA_WIDTH PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S03_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S03_AXIS_TDATA_WIDTH PARAM_VALUE.C_S03_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S03_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S03_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S01_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S01_AXIS_TDATA_WIDTH PARAM_VALUE.C_S01_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S01_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S01_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M01_AXIS_TDATA_WIDTH PARAM_VALUE.C_M01_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M01_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXIS_START_COUNT { MODELPARAM_VALUE.C_M01_AXIS_START_COUNT PARAM_VALUE.C_M01_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M01_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_M02_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M02_AXIS_TDATA_WIDTH PARAM_VALUE.C_M02_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M02_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M02_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M02_AXIS_START_COUNT { MODELPARAM_VALUE.C_M02_AXIS_START_COUNT PARAM_VALUE.C_M02_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M02_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M02_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S04_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S04_AXIS_TDATA_WIDTH PARAM_VALUE.C_S04_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S04_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S04_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M03_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M03_AXIS_TDATA_WIDTH PARAM_VALUE.C_M03_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M03_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M03_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M03_AXIS_START_COUNT { MODELPARAM_VALUE.C_M03_AXIS_START_COUNT PARAM_VALUE.C_M03_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M03_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M03_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S02_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S02_AXIS_TDATA_WIDTH PARAM_VALUE.C_S02_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M04_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M04_AXIS_TDATA_WIDTH PARAM_VALUE.C_M04_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M04_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M04_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M04_AXIS_START_COUNT { MODELPARAM_VALUE.C_M04_AXIS_START_COUNT PARAM_VALUE.C_M04_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M04_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M04_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_M06_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M06_AXIS_TDATA_WIDTH PARAM_VALUE.C_M06_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M06_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M06_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M06_AXIS_START_COUNT { MODELPARAM_VALUE.C_M06_AXIS_START_COUNT PARAM_VALUE.C_M06_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M06_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M06_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S05_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S05_AXIS_TDATA_WIDTH PARAM_VALUE.C_S05_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S05_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S05_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M07_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M07_AXIS_TDATA_WIDTH PARAM_VALUE.C_M07_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M07_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M07_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M07_AXIS_START_COUNT { MODELPARAM_VALUE.C_M07_AXIS_START_COUNT PARAM_VALUE.C_M07_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M07_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M07_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S06_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S06_AXIS_TDATA_WIDTH PARAM_VALUE.C_S06_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S06_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S06_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S07_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S07_AXIS_TDATA_WIDTH PARAM_VALUE.C_S07_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S07_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S07_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S15_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S15_AXIS_TDATA_WIDTH PARAM_VALUE.C_S15_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S15_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S15_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M08_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M08_AXIS_TDATA_WIDTH PARAM_VALUE.C_M08_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M08_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M08_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M08_AXIS_START_COUNT { MODELPARAM_VALUE.C_M08_AXIS_START_COUNT PARAM_VALUE.C_M08_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M08_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M08_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_M15_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M15_AXIS_TDATA_WIDTH PARAM_VALUE.C_M15_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M15_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M15_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M15_AXIS_START_COUNT { MODELPARAM_VALUE.C_M15_AXIS_START_COUNT PARAM_VALUE.C_M15_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M15_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M15_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S14_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S14_AXIS_TDATA_WIDTH PARAM_VALUE.C_S14_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S14_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S14_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M14_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M14_AXIS_TDATA_WIDTH PARAM_VALUE.C_M14_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M14_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M14_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M14_AXIS_START_COUNT { MODELPARAM_VALUE.C_M14_AXIS_START_COUNT PARAM_VALUE.C_M14_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M14_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M14_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S13_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S13_AXIS_TDATA_WIDTH PARAM_VALUE.C_S13_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S13_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S13_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M13_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M13_AXIS_TDATA_WIDTH PARAM_VALUE.C_M13_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M13_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M13_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M13_AXIS_START_COUNT { MODELPARAM_VALUE.C_M13_AXIS_START_COUNT PARAM_VALUE.C_M13_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M13_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M13_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S12_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S12_AXIS_TDATA_WIDTH PARAM_VALUE.C_S12_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S12_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S12_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M12_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M12_AXIS_TDATA_WIDTH PARAM_VALUE.C_M12_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M12_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M12_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M12_AXIS_START_COUNT { MODELPARAM_VALUE.C_M12_AXIS_START_COUNT PARAM_VALUE.C_M12_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M12_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M12_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S11_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S11_AXIS_TDATA_WIDTH PARAM_VALUE.C_S11_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S11_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S11_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M11_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M11_AXIS_TDATA_WIDTH PARAM_VALUE.C_M11_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M11_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M11_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M11_AXIS_START_COUNT { MODELPARAM_VALUE.C_M11_AXIS_START_COUNT PARAM_VALUE.C_M11_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M11_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M11_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S10_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S10_AXIS_TDATA_WIDTH PARAM_VALUE.C_S10_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S10_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S10_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M10_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M10_AXIS_TDATA_WIDTH PARAM_VALUE.C_M10_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M10_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M10_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M10_AXIS_START_COUNT { MODELPARAM_VALUE.C_M10_AXIS_START_COUNT PARAM_VALUE.C_M10_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M10_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M10_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S09_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S09_AXIS_TDATA_WIDTH PARAM_VALUE.C_S09_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S09_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S09_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M09_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M09_AXIS_TDATA_WIDTH PARAM_VALUE.C_M09_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M09_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M09_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M09_AXIS_START_COUNT { MODELPARAM_VALUE.C_M09_AXIS_START_COUNT PARAM_VALUE.C_M09_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M09_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M09_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_S08_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S08_AXIS_TDATA_WIDTH PARAM_VALUE.C_S08_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S08_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S08_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.NUM_SI { MODELPARAM_VALUE.NUM_SI PARAM_VALUE.NUM_SI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_SI}] ${MODELPARAM_VALUE.NUM_SI}
}

proc update_MODELPARAM_VALUE.NUM_MI { MODELPARAM_VALUE.NUM_MI PARAM_VALUE.NUM_MI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_MI}] ${MODELPARAM_VALUE.NUM_MI}
}

proc update_MODELPARAM_VALUE.ROUTE_ID00 { MODELPARAM_VALUE.ROUTE_ID00 PARAM_VALUE.ROUTE_ID00 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID00}] ${MODELPARAM_VALUE.ROUTE_ID00}
}

proc update_MODELPARAM_VALUE.FLOW_ID00 { MODELPARAM_VALUE.FLOW_ID00 PARAM_VALUE.FLOW_ID00 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID00}] ${MODELPARAM_VALUE.FLOW_ID00}
}

proc update_MODELPARAM_VALUE.ROUTE_ID01 { MODELPARAM_VALUE.ROUTE_ID01 PARAM_VALUE.ROUTE_ID01 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID01}] ${MODELPARAM_VALUE.ROUTE_ID01}
}

proc update_MODELPARAM_VALUE.FLOW_ID01 { MODELPARAM_VALUE.FLOW_ID01 PARAM_VALUE.FLOW_ID01 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID01}] ${MODELPARAM_VALUE.FLOW_ID01}
}

proc update_MODELPARAM_VALUE.ROUTE_ID02 { MODELPARAM_VALUE.ROUTE_ID02 PARAM_VALUE.ROUTE_ID02 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID02}] ${MODELPARAM_VALUE.ROUTE_ID02}
}

proc update_MODELPARAM_VALUE.FLOW_ID02 { MODELPARAM_VALUE.FLOW_ID02 PARAM_VALUE.FLOW_ID02 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID02}] ${MODELPARAM_VALUE.FLOW_ID02}
}

proc update_MODELPARAM_VALUE.ROUTE_ID03 { MODELPARAM_VALUE.ROUTE_ID03 PARAM_VALUE.ROUTE_ID03 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID03}] ${MODELPARAM_VALUE.ROUTE_ID03}
}

proc update_MODELPARAM_VALUE.FLOW_ID03 { MODELPARAM_VALUE.FLOW_ID03 PARAM_VALUE.FLOW_ID03 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID03}] ${MODELPARAM_VALUE.FLOW_ID03}
}

proc update_MODELPARAM_VALUE.ROUTE_ID04 { MODELPARAM_VALUE.ROUTE_ID04 PARAM_VALUE.ROUTE_ID04 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID04}] ${MODELPARAM_VALUE.ROUTE_ID04}
}

proc update_MODELPARAM_VALUE.FLOW_ID04 { MODELPARAM_VALUE.FLOW_ID04 PARAM_VALUE.FLOW_ID04 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID04}] ${MODELPARAM_VALUE.FLOW_ID04}
}

proc update_MODELPARAM_VALUE.ROUTE_ID05 { MODELPARAM_VALUE.ROUTE_ID05 PARAM_VALUE.ROUTE_ID05 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID05}] ${MODELPARAM_VALUE.ROUTE_ID05}
}

proc update_MODELPARAM_VALUE.FLOW_ID05 { MODELPARAM_VALUE.FLOW_ID05 PARAM_VALUE.FLOW_ID05 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID05}] ${MODELPARAM_VALUE.FLOW_ID05}
}

proc update_MODELPARAM_VALUE.ROUTE_ID06 { MODELPARAM_VALUE.ROUTE_ID06 PARAM_VALUE.ROUTE_ID06 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID06}] ${MODELPARAM_VALUE.ROUTE_ID06}
}

proc update_MODELPARAM_VALUE.FLOW_ID06 { MODELPARAM_VALUE.FLOW_ID06 PARAM_VALUE.FLOW_ID06 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID06}] ${MODELPARAM_VALUE.FLOW_ID06}
}

proc update_MODELPARAM_VALUE.ROUTE_ID07 { MODELPARAM_VALUE.ROUTE_ID07 PARAM_VALUE.ROUTE_ID07 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID07}] ${MODELPARAM_VALUE.ROUTE_ID07}
}

proc update_MODELPARAM_VALUE.FLOW_ID07 { MODELPARAM_VALUE.FLOW_ID07 PARAM_VALUE.FLOW_ID07 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID07}] ${MODELPARAM_VALUE.FLOW_ID07}
}

proc update_MODELPARAM_VALUE.ROUTE_ID08 { MODELPARAM_VALUE.ROUTE_ID08 PARAM_VALUE.ROUTE_ID08 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID08}] ${MODELPARAM_VALUE.ROUTE_ID08}
}

proc update_MODELPARAM_VALUE.FLOW_ID08 { MODELPARAM_VALUE.FLOW_ID08 PARAM_VALUE.FLOW_ID08 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID08}] ${MODELPARAM_VALUE.FLOW_ID08}
}

proc update_MODELPARAM_VALUE.ROUTE_ID09 { MODELPARAM_VALUE.ROUTE_ID09 PARAM_VALUE.ROUTE_ID09 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID09}] ${MODELPARAM_VALUE.ROUTE_ID09}
}

proc update_MODELPARAM_VALUE.FLOW_ID09 { MODELPARAM_VALUE.FLOW_ID09 PARAM_VALUE.FLOW_ID09 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID09}] ${MODELPARAM_VALUE.FLOW_ID09}
}

proc update_MODELPARAM_VALUE.ROUTE_ID10 { MODELPARAM_VALUE.ROUTE_ID10 PARAM_VALUE.ROUTE_ID10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID10}] ${MODELPARAM_VALUE.ROUTE_ID10}
}

proc update_MODELPARAM_VALUE.FLOW_ID10 { MODELPARAM_VALUE.FLOW_ID10 PARAM_VALUE.FLOW_ID10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID10}] ${MODELPARAM_VALUE.FLOW_ID10}
}

proc update_MODELPARAM_VALUE.ROUTE_ID11 { MODELPARAM_VALUE.ROUTE_ID11 PARAM_VALUE.ROUTE_ID11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID11}] ${MODELPARAM_VALUE.ROUTE_ID11}
}

proc update_MODELPARAM_VALUE.FLOW_ID11 { MODELPARAM_VALUE.FLOW_ID11 PARAM_VALUE.FLOW_ID11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID11}] ${MODELPARAM_VALUE.FLOW_ID11}
}

proc update_MODELPARAM_VALUE.ROUTE_ID12 { MODELPARAM_VALUE.ROUTE_ID12 PARAM_VALUE.ROUTE_ID12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID12}] ${MODELPARAM_VALUE.ROUTE_ID12}
}

proc update_MODELPARAM_VALUE.FLOW_ID12 { MODELPARAM_VALUE.FLOW_ID12 PARAM_VALUE.FLOW_ID12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID12}] ${MODELPARAM_VALUE.FLOW_ID12}
}

proc update_MODELPARAM_VALUE.ROUTE_ID13 { MODELPARAM_VALUE.ROUTE_ID13 PARAM_VALUE.ROUTE_ID13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID13}] ${MODELPARAM_VALUE.ROUTE_ID13}
}

proc update_MODELPARAM_VALUE.FLOW_ID13 { MODELPARAM_VALUE.FLOW_ID13 PARAM_VALUE.FLOW_ID13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID13}] ${MODELPARAM_VALUE.FLOW_ID13}
}

proc update_MODELPARAM_VALUE.ROUTE_ID14 { MODELPARAM_VALUE.ROUTE_ID14 PARAM_VALUE.ROUTE_ID14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID14}] ${MODELPARAM_VALUE.ROUTE_ID14}
}

proc update_MODELPARAM_VALUE.FLOW_ID14 { MODELPARAM_VALUE.FLOW_ID14 PARAM_VALUE.FLOW_ID14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID14}] ${MODELPARAM_VALUE.FLOW_ID14}
}

proc update_MODELPARAM_VALUE.ROUTE_ID15 { MODELPARAM_VALUE.ROUTE_ID15 PARAM_VALUE.ROUTE_ID15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTE_ID15}] ${MODELPARAM_VALUE.ROUTE_ID15}
}

proc update_MODELPARAM_VALUE.FLOW_ID15 { MODELPARAM_VALUE.FLOW_ID15 PARAM_VALUE.FLOW_ID15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLOW_ID15}] ${MODELPARAM_VALUE.FLOW_ID15}
}

