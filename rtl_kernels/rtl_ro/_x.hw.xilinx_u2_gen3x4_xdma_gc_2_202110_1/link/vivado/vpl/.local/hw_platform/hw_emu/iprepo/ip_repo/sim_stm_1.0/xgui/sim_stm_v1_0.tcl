# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_C2H00_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H00_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H00_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H01_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H01_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H01_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H02_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H02_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H02_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H03_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H03_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H03_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H04_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H04_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H04_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H05_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H05_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H05_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H06_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H06_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H06_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H07_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H07_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H07_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H08_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H08_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H08_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H09_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H09_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H09_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H10_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H10_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H10_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H11_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H11_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H11_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H12_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H12_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H12_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H13_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H13_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H13_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H14_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H14_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H14_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H15_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H15_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_C2H15_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C00_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C00_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C00_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C01_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C01_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C01_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C02_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C02_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C02_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C03_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C03_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C03_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C04_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C04_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C04_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C05_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C05_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C05_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C06_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C06_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C06_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C07_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C07_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C07_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C08_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C08_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C08_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C09_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C09_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C09_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C10_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C10_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C10_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C11_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C11_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C11_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C12_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C12_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C12_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C13_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C13_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C13_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C14_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C14_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C14_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C15_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C15_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_H2C15_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MSTM_AXI_S_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MSTM_AXI_S_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MSTM_AXI_S_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SSTM_AXI_S_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SSTM_AXI_S_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SSTM_AXI_S_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TDATA_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TDEST_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TID_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TKEEP_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TLAST_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TREADY_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TSTRB_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TUSER_ENABLE" -parent ${Page_0}
  set C_SSTM_AXI_S_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_SSTM_AXI_S_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_SSTM_AXI_S_TDATA_WIDTH}
  set C_H2C13_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C13_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C13_AXIS_TDATA_WIDTH}
  set C_H2C13_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C13_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C13_AXIS_START_COUNT}
  set C_H2C05_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C05_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C05_AXIS_TDATA_WIDTH}
  set C_H2C05_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C05_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C05_AXIS_START_COUNT}
  set C_C2H00_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H00_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H00_AXIS_TDATA_WIDTH}
  set C_C2H07_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H07_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H07_AXIS_TDATA_WIDTH}
  set C_C2H03_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H03_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H03_AXIS_TDATA_WIDTH}
  set C_C2H01_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H01_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H01_AXIS_TDATA_WIDTH}
  set C_C2H02_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H02_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H02_AXIS_TDATA_WIDTH}
  set C_H2C04_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C04_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C04_AXIS_TDATA_WIDTH}
  set C_H2C04_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C04_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C04_AXIS_START_COUNT}
  set C_H2C01_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C01_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C01_AXIS_TDATA_WIDTH}
  set C_H2C01_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C01_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C01_AXIS_START_COUNT}
  set C_H2C02_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C02_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C02_AXIS_TDATA_WIDTH}
  set C_H2C02_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C02_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C02_AXIS_START_COUNT}
  set C_H2C03_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C03_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C03_AXIS_TDATA_WIDTH}
  set C_H2C03_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C03_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C03_AXIS_START_COUNT}
  set C_C2H11_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H11_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H11_AXIS_TDATA_WIDTH}
  set C_C2H10_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H10_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H10_AXIS_TDATA_WIDTH}
  set C_H2C08_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C08_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C08_AXIS_TDATA_WIDTH}
  set C_H2C08_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C08_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C08_AXIS_START_COUNT}
  set C_C2H09_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H09_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H09_AXIS_TDATA_WIDTH}
  set C_H2C09_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C09_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C09_AXIS_TDATA_WIDTH}
  set C_H2C09_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C09_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C09_AXIS_START_COUNT}
  set C_C2H14_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H14_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H14_AXIS_TDATA_WIDTH}
  set C_H2C14_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C14_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C14_AXIS_TDATA_WIDTH}
  set C_H2C14_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C14_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C14_AXIS_START_COUNT}
  set C_H2C12_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C12_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C12_AXIS_TDATA_WIDTH}
  set C_H2C12_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C12_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C12_AXIS_START_COUNT}
  set C_H2C10_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C10_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C10_AXIS_TDATA_WIDTH}
  set C_H2C10_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C10_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C10_AXIS_START_COUNT}
  set C_H2C00_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C00_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C00_AXIS_TDATA_WIDTH}
  set C_H2C00_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C00_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C00_AXIS_START_COUNT}
  set C_H2C07_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C07_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C07_AXIS_TDATA_WIDTH}
  set C_H2C07_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C07_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C07_AXIS_START_COUNT}
  set C_C2H05_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H05_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H05_AXIS_TDATA_WIDTH}
  set C_C2H08_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H08_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H08_AXIS_TDATA_WIDTH}
  set C_H2C15_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C15_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C15_AXIS_TDATA_WIDTH}
  set C_H2C15_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C15_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C15_AXIS_START_COUNT}
  set C_H2C06_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C06_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C06_AXIS_TDATA_WIDTH}
  set C_H2C06_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C06_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C06_AXIS_START_COUNT}
  set C_C2H13_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H13_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H13_AXIS_TDATA_WIDTH}
  set C_C2H12_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H12_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H12_AXIS_TDATA_WIDTH}
  set C_H2C11_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_H2C11_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_H2C11_AXIS_TDATA_WIDTH}
  set C_H2C11_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_H2C11_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_H2C11_AXIS_START_COUNT}
  set C_C2H06_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H06_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H06_AXIS_TDATA_WIDTH}
  set C_MSTM_AXI_S_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_MSTM_AXI_S_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_MSTM_AXI_S_TDATA_WIDTH}
  set C_MSTM_AXI_S_START_COUNT [ipgui::add_param $IPINST -name "C_MSTM_AXI_S_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_MSTM_AXI_S_START_COUNT}
  set C_C2H04_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H04_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H04_AXIS_TDATA_WIDTH}
  set C_C2H15_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_C2H15_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_C2H15_AXIS_TDATA_WIDTH}

  #Adding Page
  set STM_configuration [ipgui::add_page $IPINST -name "STM configuration"]
  set C_NUM_STREAM_ITF [ipgui::add_param $IPINST -name "C_NUM_STREAM_ITF" -parent ${STM_configuration}]
  set_property tooltip {Number of stream Interfaces} ${C_NUM_STREAM_ITF}


}

proc update_PARAM_VALUE.C_C2H00_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H00_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H00_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H00_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H00_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H00_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H00_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H00_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H00_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H00_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H00_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H00_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H00_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H00_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H00_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H00_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H00_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H00_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H01_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H01_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H01_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H01_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H01_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H01_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H01_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H01_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H01_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H01_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H01_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H01_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H01_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H01_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H01_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H01_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H01_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H01_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H02_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H02_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H02_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H02_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H02_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H02_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H02_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H02_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H02_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H02_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H02_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H02_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H02_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H02_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H02_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H02_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H02_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H02_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H03_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H03_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H03_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H03_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H03_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H03_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H03_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H03_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H03_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H03_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H03_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H03_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H03_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H03_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H03_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H03_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H03_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H03_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H04_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H04_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H04_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H04_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H04_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H04_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H04_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H04_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H04_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H04_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H04_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H04_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H04_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H04_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H04_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H04_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H04_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H04_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H05_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H05_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H05_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H05_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H05_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H05_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H05_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H05_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H05_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H05_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H05_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H05_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H05_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H05_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H05_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H05_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H05_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H05_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H06_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H06_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H06_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H06_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H06_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H06_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H06_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H06_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H06_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H06_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H06_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H06_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H06_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H06_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H06_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H06_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H06_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H06_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H07_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H07_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H07_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H07_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H07_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H07_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H07_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H07_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H07_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H07_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H07_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H07_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H07_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H07_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H07_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H07_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H07_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H07_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H08_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H08_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H08_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H08_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H08_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H08_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H08_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H08_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H08_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H08_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H08_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H08_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H08_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H08_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H08_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H08_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H08_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H08_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H09_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H09_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H09_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H09_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H09_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H09_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H09_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H09_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H09_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H09_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H09_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H09_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H09_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H09_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H09_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H09_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H09_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H09_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H10_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H10_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H10_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H10_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H10_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H10_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H10_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H10_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H10_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H10_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H10_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H10_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H10_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H10_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H10_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H10_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H10_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H10_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H11_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H11_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H11_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H11_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H11_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H11_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H11_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H11_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H11_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H11_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H11_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H11_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H11_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H11_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H11_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H11_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H11_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H11_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H12_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H12_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H12_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H12_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H12_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H12_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H12_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H12_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H12_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H12_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H12_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H12_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H12_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H12_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H12_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H12_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H12_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H12_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H13_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H13_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H13_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H13_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H13_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H13_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H13_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H13_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H13_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H13_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H13_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H13_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H13_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H13_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H13_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H13_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H13_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H13_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H14_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H14_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H14_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H14_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H14_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H14_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H14_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H14_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H14_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H14_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H14_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H14_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H14_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H14_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H14_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H14_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H14_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H14_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H15_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H15_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_C2H15_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H15_AXIS_TDEST_WIDTH { PARAM_VALUE.C_C2H15_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_C2H15_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H15_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H15_AXIS_TID_WIDTH } {
	# Procedure called to update C_C2H15_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H15_AXIS_TID_WIDTH { PARAM_VALUE.C_C2H15_AXIS_TID_WIDTH } {
	# Procedure called to validate C_C2H15_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H15_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H15_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_C2H15_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H15_AXIS_TUSER_WIDTH { PARAM_VALUE.C_C2H15_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_C2H15_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C00_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C00_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C00_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C00_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C00_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C00_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C00_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C00_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C00_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C00_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C00_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C00_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C00_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C00_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C00_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C00_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C00_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C00_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C01_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C01_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C01_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C01_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C01_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C01_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C01_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C01_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C01_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C01_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C01_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C01_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C01_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C01_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C01_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C01_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C01_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C01_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C02_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C02_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C02_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C02_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C02_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C02_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C02_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C02_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C02_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C02_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C02_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C02_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C02_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C02_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C02_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C02_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C02_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C02_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C03_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C03_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C03_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C03_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C03_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C03_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C03_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C03_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C03_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C03_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C03_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C03_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C03_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C03_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C03_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C03_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C03_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C03_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C04_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C04_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C04_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C04_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C04_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C04_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C04_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C04_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C04_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C04_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C04_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C04_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C04_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C04_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C04_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C04_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C04_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C04_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C05_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C05_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C05_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C05_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C05_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C05_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C05_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C05_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C05_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C05_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C05_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C05_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C05_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C05_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C05_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C05_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C05_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C05_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C06_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C06_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C06_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C06_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C06_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C06_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C06_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C06_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C06_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C06_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C06_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C06_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C06_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C06_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C06_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C06_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C06_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C06_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C07_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C07_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C07_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C07_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C07_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C07_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C07_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C07_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C07_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C07_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C07_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C07_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C07_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C07_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C07_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C07_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C07_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C07_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C08_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C08_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C08_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C08_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C08_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C08_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C08_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C08_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C08_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C08_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C08_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C08_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C08_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C08_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C08_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C08_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C08_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C08_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C09_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C09_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C09_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C09_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C09_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C09_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C09_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C09_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C09_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C09_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C09_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C09_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C09_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C09_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C09_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C09_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C09_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C09_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C10_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C10_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C10_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C10_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C10_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C10_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C10_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C10_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C10_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C10_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C10_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C10_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C10_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C10_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C10_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C10_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C10_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C10_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C11_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C11_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C11_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C11_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C11_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C11_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C11_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C11_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C11_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C11_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C11_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C11_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C11_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C11_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C11_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C11_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C11_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C11_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C12_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C12_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C12_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C12_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C12_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C12_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C12_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C12_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C12_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C12_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C12_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C12_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C12_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C12_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C12_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C12_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C12_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C12_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C13_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C13_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C13_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C13_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C13_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C13_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C13_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C13_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C13_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C13_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C13_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C13_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C13_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C13_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C13_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C13_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C13_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C13_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C14_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C14_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C14_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C14_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C14_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C14_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C14_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C14_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C14_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C14_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C14_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C14_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C14_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C14_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C14_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C14_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C14_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C14_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C15_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C15_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_H2C15_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C15_AXIS_TDEST_WIDTH { PARAM_VALUE.C_H2C15_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_H2C15_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C15_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C15_AXIS_TID_WIDTH } {
	# Procedure called to update C_H2C15_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C15_AXIS_TID_WIDTH { PARAM_VALUE.C_H2C15_AXIS_TID_WIDTH } {
	# Procedure called to validate C_H2C15_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C15_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C15_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_H2C15_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C15_AXIS_TUSER_WIDTH { PARAM_VALUE.C_H2C15_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_H2C15_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MSTM_AXI_S_TDEST_WIDTH { PARAM_VALUE.C_MSTM_AXI_S_TDEST_WIDTH } {
	# Procedure called to update C_MSTM_AXI_S_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MSTM_AXI_S_TDEST_WIDTH { PARAM_VALUE.C_MSTM_AXI_S_TDEST_WIDTH } {
	# Procedure called to validate C_MSTM_AXI_S_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MSTM_AXI_S_TID_WIDTH { PARAM_VALUE.C_MSTM_AXI_S_TID_WIDTH } {
	# Procedure called to update C_MSTM_AXI_S_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MSTM_AXI_S_TID_WIDTH { PARAM_VALUE.C_MSTM_AXI_S_TID_WIDTH } {
	# Procedure called to validate C_MSTM_AXI_S_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MSTM_AXI_S_TUSER_WIDTH { PARAM_VALUE.C_MSTM_AXI_S_TUSER_WIDTH } {
	# Procedure called to update C_MSTM_AXI_S_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MSTM_AXI_S_TUSER_WIDTH { PARAM_VALUE.C_MSTM_AXI_S_TUSER_WIDTH } {
	# Procedure called to validate C_MSTM_AXI_S_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_NUM_STREAM_ITF { PARAM_VALUE.C_NUM_STREAM_ITF } {
	# Procedure called to update C_NUM_STREAM_ITF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_STREAM_ITF { PARAM_VALUE.C_NUM_STREAM_ITF } {
	# Procedure called to validate C_NUM_STREAM_ITF
	return true
}

proc update_PARAM_VALUE.C_SSTM_AXI_S_TDEST_WIDTH { PARAM_VALUE.C_SSTM_AXI_S_TDEST_WIDTH } {
	# Procedure called to update C_SSTM_AXI_S_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SSTM_AXI_S_TDEST_WIDTH { PARAM_VALUE.C_SSTM_AXI_S_TDEST_WIDTH } {
	# Procedure called to validate C_SSTM_AXI_S_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SSTM_AXI_S_TID_WIDTH { PARAM_VALUE.C_SSTM_AXI_S_TID_WIDTH } {
	# Procedure called to update C_SSTM_AXI_S_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SSTM_AXI_S_TID_WIDTH { PARAM_VALUE.C_SSTM_AXI_S_TID_WIDTH } {
	# Procedure called to validate C_SSTM_AXI_S_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_SSTM_AXI_S_TUSER_WIDTH { PARAM_VALUE.C_SSTM_AXI_S_TUSER_WIDTH } {
	# Procedure called to update C_SSTM_AXI_S_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SSTM_AXI_S_TUSER_WIDTH { PARAM_VALUE.C_SSTM_AXI_S_TUSER_WIDTH } {
	# Procedure called to validate C_SSTM_AXI_S_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.TDATA_ENABLE { PARAM_VALUE.TDATA_ENABLE } {
	# Procedure called to update TDATA_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDATA_ENABLE { PARAM_VALUE.TDATA_ENABLE } {
	# Procedure called to validate TDATA_ENABLE
	return true
}

proc update_PARAM_VALUE.TDEST_ENABLE { PARAM_VALUE.TDEST_ENABLE } {
	# Procedure called to update TDEST_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDEST_ENABLE { PARAM_VALUE.TDEST_ENABLE } {
	# Procedure called to validate TDEST_ENABLE
	return true
}

proc update_PARAM_VALUE.TID_ENABLE { PARAM_VALUE.TID_ENABLE } {
	# Procedure called to update TID_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TID_ENABLE { PARAM_VALUE.TID_ENABLE } {
	# Procedure called to validate TID_ENABLE
	return true
}

proc update_PARAM_VALUE.TKEEP_ENABLE { PARAM_VALUE.TKEEP_ENABLE } {
	# Procedure called to update TKEEP_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TKEEP_ENABLE { PARAM_VALUE.TKEEP_ENABLE } {
	# Procedure called to validate TKEEP_ENABLE
	return true
}

proc update_PARAM_VALUE.TLAST_ENABLE { PARAM_VALUE.TLAST_ENABLE } {
	# Procedure called to update TLAST_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TLAST_ENABLE { PARAM_VALUE.TLAST_ENABLE } {
	# Procedure called to validate TLAST_ENABLE
	return true
}

proc update_PARAM_VALUE.TREADY_ENABLE { PARAM_VALUE.TREADY_ENABLE } {
	# Procedure called to update TREADY_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TREADY_ENABLE { PARAM_VALUE.TREADY_ENABLE } {
	# Procedure called to validate TREADY_ENABLE
	return true
}

proc update_PARAM_VALUE.TSTRB_ENABLE { PARAM_VALUE.TSTRB_ENABLE } {
	# Procedure called to update TSTRB_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TSTRB_ENABLE { PARAM_VALUE.TSTRB_ENABLE } {
	# Procedure called to validate TSTRB_ENABLE
	return true
}

proc update_PARAM_VALUE.TUSER_ENABLE { PARAM_VALUE.TUSER_ENABLE } {
	# Procedure called to update TUSER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TUSER_ENABLE { PARAM_VALUE.TUSER_ENABLE } {
	# Procedure called to validate TUSER_ENABLE
	return true
}

proc update_PARAM_VALUE.C_SSTM_AXI_S_TDATA_WIDTH { PARAM_VALUE.C_SSTM_AXI_S_TDATA_WIDTH } {
	# Procedure called to update C_SSTM_AXI_S_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SSTM_AXI_S_TDATA_WIDTH { PARAM_VALUE.C_SSTM_AXI_S_TDATA_WIDTH } {
	# Procedure called to validate C_SSTM_AXI_S_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C13_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C13_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C13_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C13_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C13_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C13_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C13_AXIS_START_COUNT { PARAM_VALUE.C_H2C13_AXIS_START_COUNT } {
	# Procedure called to update C_H2C13_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C13_AXIS_START_COUNT { PARAM_VALUE.C_H2C13_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C13_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_H2C05_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C05_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C05_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C05_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C05_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C05_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C05_AXIS_START_COUNT { PARAM_VALUE.C_H2C05_AXIS_START_COUNT } {
	# Procedure called to update C_H2C05_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C05_AXIS_START_COUNT { PARAM_VALUE.C_H2C05_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C05_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_C2H00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H00_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H00_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H00_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H00_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H07_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H07_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H07_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H07_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H07_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H07_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H03_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H03_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H03_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H03_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H03_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H03_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H01_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H01_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H01_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H01_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H01_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H01_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H02_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H02_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H02_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H02_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H02_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H02_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C04_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C04_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C04_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C04_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C04_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C04_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C04_AXIS_START_COUNT { PARAM_VALUE.C_H2C04_AXIS_START_COUNT } {
	# Procedure called to update C_H2C04_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C04_AXIS_START_COUNT { PARAM_VALUE.C_H2C04_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C04_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_H2C01_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C01_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C01_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C01_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C01_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C01_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C01_AXIS_START_COUNT { PARAM_VALUE.C_H2C01_AXIS_START_COUNT } {
	# Procedure called to update C_H2C01_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C01_AXIS_START_COUNT { PARAM_VALUE.C_H2C01_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C01_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_H2C02_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C02_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C02_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C02_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C02_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C02_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C02_AXIS_START_COUNT { PARAM_VALUE.C_H2C02_AXIS_START_COUNT } {
	# Procedure called to update C_H2C02_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C02_AXIS_START_COUNT { PARAM_VALUE.C_H2C02_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C02_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_H2C03_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C03_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C03_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C03_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C03_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C03_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C03_AXIS_START_COUNT { PARAM_VALUE.C_H2C03_AXIS_START_COUNT } {
	# Procedure called to update C_H2C03_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C03_AXIS_START_COUNT { PARAM_VALUE.C_H2C03_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C03_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_C2H11_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H11_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H11_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H11_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H11_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H11_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H10_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H10_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H10_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H10_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H10_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H10_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C08_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C08_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C08_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C08_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C08_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C08_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C08_AXIS_START_COUNT { PARAM_VALUE.C_H2C08_AXIS_START_COUNT } {
	# Procedure called to update C_H2C08_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C08_AXIS_START_COUNT { PARAM_VALUE.C_H2C08_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C08_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_C2H09_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H09_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H09_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H09_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H09_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H09_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C09_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C09_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C09_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C09_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C09_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C09_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C09_AXIS_START_COUNT { PARAM_VALUE.C_H2C09_AXIS_START_COUNT } {
	# Procedure called to update C_H2C09_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C09_AXIS_START_COUNT { PARAM_VALUE.C_H2C09_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C09_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_C2H14_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H14_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H14_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H14_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H14_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H14_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C14_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C14_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C14_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C14_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C14_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C14_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C14_AXIS_START_COUNT { PARAM_VALUE.C_H2C14_AXIS_START_COUNT } {
	# Procedure called to update C_H2C14_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C14_AXIS_START_COUNT { PARAM_VALUE.C_H2C14_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C14_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_H2C12_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C12_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C12_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C12_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C12_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C12_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C12_AXIS_START_COUNT { PARAM_VALUE.C_H2C12_AXIS_START_COUNT } {
	# Procedure called to update C_H2C12_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C12_AXIS_START_COUNT { PARAM_VALUE.C_H2C12_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C12_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_H2C10_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C10_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C10_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C10_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C10_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C10_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C10_AXIS_START_COUNT { PARAM_VALUE.C_H2C10_AXIS_START_COUNT } {
	# Procedure called to update C_H2C10_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C10_AXIS_START_COUNT { PARAM_VALUE.C_H2C10_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C10_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_H2C00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C00_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C00_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C00_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C00_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C00_AXIS_START_COUNT { PARAM_VALUE.C_H2C00_AXIS_START_COUNT } {
	# Procedure called to update C_H2C00_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C00_AXIS_START_COUNT { PARAM_VALUE.C_H2C00_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C00_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_H2C07_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C07_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C07_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C07_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C07_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C07_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C07_AXIS_START_COUNT { PARAM_VALUE.C_H2C07_AXIS_START_COUNT } {
	# Procedure called to update C_H2C07_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C07_AXIS_START_COUNT { PARAM_VALUE.C_H2C07_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C07_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_C2H05_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H05_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H05_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H05_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H05_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H05_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H08_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H08_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H08_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H08_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H08_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H08_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C15_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C15_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C15_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C15_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C15_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C15_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C15_AXIS_START_COUNT { PARAM_VALUE.C_H2C15_AXIS_START_COUNT } {
	# Procedure called to update C_H2C15_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C15_AXIS_START_COUNT { PARAM_VALUE.C_H2C15_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C15_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_H2C06_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C06_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C06_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C06_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C06_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C06_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C06_AXIS_START_COUNT { PARAM_VALUE.C_H2C06_AXIS_START_COUNT } {
	# Procedure called to update C_H2C06_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C06_AXIS_START_COUNT { PARAM_VALUE.C_H2C06_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C06_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_C2H13_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H13_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H13_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H13_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H13_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H13_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H12_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H12_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H12_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H12_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H12_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H12_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C11_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C11_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_H2C11_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C11_AXIS_TDATA_WIDTH { PARAM_VALUE.C_H2C11_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_H2C11_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_H2C11_AXIS_START_COUNT { PARAM_VALUE.C_H2C11_AXIS_START_COUNT } {
	# Procedure called to update C_H2C11_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_H2C11_AXIS_START_COUNT { PARAM_VALUE.C_H2C11_AXIS_START_COUNT } {
	# Procedure called to validate C_H2C11_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_C2H06_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H06_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H06_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H06_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H06_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H06_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MSTM_AXI_S_TDATA_WIDTH { PARAM_VALUE.C_MSTM_AXI_S_TDATA_WIDTH } {
	# Procedure called to update C_MSTM_AXI_S_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MSTM_AXI_S_TDATA_WIDTH { PARAM_VALUE.C_MSTM_AXI_S_TDATA_WIDTH } {
	# Procedure called to validate C_MSTM_AXI_S_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MSTM_AXI_S_START_COUNT { PARAM_VALUE.C_MSTM_AXI_S_START_COUNT } {
	# Procedure called to update C_MSTM_AXI_S_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MSTM_AXI_S_START_COUNT { PARAM_VALUE.C_MSTM_AXI_S_START_COUNT } {
	# Procedure called to validate C_MSTM_AXI_S_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_C2H04_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H04_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H04_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H04_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H04_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H04_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_C2H15_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H15_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_C2H15_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_C2H15_AXIS_TDATA_WIDTH { PARAM_VALUE.C_C2H15_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_C2H15_AXIS_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_SSTM_AXI_S_TUSER_WIDTH { MODELPARAM_VALUE.C_SSTM_AXI_S_TUSER_WIDTH PARAM_VALUE.C_SSTM_AXI_S_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SSTM_AXI_S_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_SSTM_AXI_S_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_SSTM_AXI_S_TID_WIDTH { MODELPARAM_VALUE.C_SSTM_AXI_S_TID_WIDTH PARAM_VALUE.C_SSTM_AXI_S_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SSTM_AXI_S_TID_WIDTH}] ${MODELPARAM_VALUE.C_SSTM_AXI_S_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_SSTM_AXI_S_TDEST_WIDTH { MODELPARAM_VALUE.C_SSTM_AXI_S_TDEST_WIDTH PARAM_VALUE.C_SSTM_AXI_S_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SSTM_AXI_S_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_SSTM_AXI_S_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MSTM_AXI_S_TUSER_WIDTH { MODELPARAM_VALUE.C_MSTM_AXI_S_TUSER_WIDTH PARAM_VALUE.C_MSTM_AXI_S_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MSTM_AXI_S_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_MSTM_AXI_S_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MSTM_AXI_S_TID_WIDTH { MODELPARAM_VALUE.C_MSTM_AXI_S_TID_WIDTH PARAM_VALUE.C_MSTM_AXI_S_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MSTM_AXI_S_TID_WIDTH}] ${MODELPARAM_VALUE.C_MSTM_AXI_S_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MSTM_AXI_S_TDEST_WIDTH { MODELPARAM_VALUE.C_MSTM_AXI_S_TDEST_WIDTH PARAM_VALUE.C_MSTM_AXI_S_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MSTM_AXI_S_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_MSTM_AXI_S_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H00_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H00_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H00_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H00_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H00_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H00_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H00_AXIS_TID_WIDTH PARAM_VALUE.C_C2H00_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H00_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H00_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H00_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H00_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H00_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H00_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H00_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C00_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C00_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C00_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C00_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C00_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C00_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C00_AXIS_TID_WIDTH PARAM_VALUE.C_H2C00_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C00_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C00_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C00_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C00_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C00_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C00_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C00_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H01_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H01_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H01_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H01_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H01_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H01_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H01_AXIS_TID_WIDTH PARAM_VALUE.C_C2H01_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H01_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H01_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H01_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H01_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H01_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H01_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H01_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C01_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C01_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C01_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C01_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C01_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C01_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C01_AXIS_TID_WIDTH PARAM_VALUE.C_H2C01_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C01_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C01_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C01_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C01_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C01_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C01_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C01_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H02_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H02_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H02_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H02_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H02_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H02_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H02_AXIS_TID_WIDTH PARAM_VALUE.C_C2H02_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H02_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H02_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H02_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H02_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H02_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H02_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H02_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C02_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C02_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C02_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C02_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C02_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C02_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C02_AXIS_TID_WIDTH PARAM_VALUE.C_H2C02_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C02_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C02_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C02_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C02_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C02_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C02_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C02_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H03_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H03_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H03_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H03_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H03_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H03_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H03_AXIS_TID_WIDTH PARAM_VALUE.C_C2H03_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H03_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H03_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H03_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H03_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H03_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H03_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H03_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C03_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C03_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C03_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C03_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C03_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C03_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C03_AXIS_TID_WIDTH PARAM_VALUE.C_H2C03_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C03_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C03_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C03_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C03_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C03_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C03_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C03_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H04_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H04_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H04_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H04_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H04_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H04_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H04_AXIS_TID_WIDTH PARAM_VALUE.C_C2H04_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H04_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H04_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H04_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H04_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H04_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H04_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H04_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C04_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C04_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C04_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C04_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C04_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C04_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C04_AXIS_TID_WIDTH PARAM_VALUE.C_H2C04_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C04_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C04_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C04_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C04_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C04_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C04_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C04_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H05_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H05_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H05_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H05_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H05_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H05_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H05_AXIS_TID_WIDTH PARAM_VALUE.C_C2H05_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H05_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H05_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H05_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H05_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H05_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H05_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H05_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C05_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C05_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C05_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C05_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C05_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C05_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C05_AXIS_TID_WIDTH PARAM_VALUE.C_H2C05_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C05_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C05_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C05_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C05_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C05_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C05_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C05_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H06_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H06_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H06_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H06_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H06_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H06_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H06_AXIS_TID_WIDTH PARAM_VALUE.C_C2H06_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H06_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H06_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H06_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H06_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H06_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H06_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H06_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C06_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C06_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C06_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C06_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C06_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C06_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C06_AXIS_TID_WIDTH PARAM_VALUE.C_H2C06_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C06_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C06_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C06_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C06_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C06_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C06_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C06_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H07_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H07_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H07_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H07_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H07_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H07_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H07_AXIS_TID_WIDTH PARAM_VALUE.C_C2H07_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H07_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H07_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H07_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H07_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H07_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H07_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H07_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C07_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C07_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C07_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C07_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C07_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C07_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C07_AXIS_TID_WIDTH PARAM_VALUE.C_H2C07_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C07_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C07_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C07_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C07_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C07_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C07_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C07_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H08_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H08_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H08_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H08_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H08_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H08_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H08_AXIS_TID_WIDTH PARAM_VALUE.C_C2H08_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H08_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H08_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H08_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H08_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H08_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H08_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H08_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C08_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C08_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C08_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C08_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C08_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C08_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C08_AXIS_TID_WIDTH PARAM_VALUE.C_H2C08_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C08_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C08_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C08_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C08_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C08_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C08_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C08_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H09_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H09_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H09_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H09_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H09_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H09_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H09_AXIS_TID_WIDTH PARAM_VALUE.C_C2H09_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H09_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H09_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H09_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H09_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H09_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H09_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H09_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C09_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C09_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C09_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C09_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C09_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C09_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C09_AXIS_TID_WIDTH PARAM_VALUE.C_H2C09_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C09_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C09_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C09_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C09_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C09_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C09_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C09_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H10_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H10_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H10_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H10_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H10_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H10_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H10_AXIS_TID_WIDTH PARAM_VALUE.C_C2H10_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H10_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H10_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H10_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H10_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H10_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H10_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H10_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C10_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C10_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C10_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C10_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C10_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C10_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C10_AXIS_TID_WIDTH PARAM_VALUE.C_H2C10_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C10_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C10_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C10_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C10_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C10_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C10_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C10_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H11_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H11_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H11_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H11_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H11_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H11_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H11_AXIS_TID_WIDTH PARAM_VALUE.C_C2H11_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H11_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H11_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H11_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H11_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H11_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H11_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H11_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C11_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C11_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C11_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C11_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C11_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C11_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C11_AXIS_TID_WIDTH PARAM_VALUE.C_H2C11_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C11_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C11_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C11_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C11_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C11_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C11_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C11_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H12_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H12_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H12_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H12_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H12_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H12_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H12_AXIS_TID_WIDTH PARAM_VALUE.C_C2H12_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H12_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H12_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H12_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H12_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H12_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H12_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H12_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C12_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C12_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C12_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C12_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C12_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C12_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C12_AXIS_TID_WIDTH PARAM_VALUE.C_H2C12_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C12_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C12_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C12_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C12_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C12_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C12_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C12_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H13_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H13_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H13_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H13_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H13_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H13_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H13_AXIS_TID_WIDTH PARAM_VALUE.C_C2H13_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H13_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H13_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H13_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H13_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H13_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H13_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H13_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C13_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C13_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C13_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C13_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C13_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C13_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C13_AXIS_TID_WIDTH PARAM_VALUE.C_H2C13_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C13_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C13_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C13_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C13_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C13_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C13_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C13_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H14_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H14_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H14_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H14_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H14_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H14_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H14_AXIS_TID_WIDTH PARAM_VALUE.C_C2H14_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H14_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H14_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H14_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H14_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H14_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H14_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H14_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C14_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C14_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C14_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C14_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C14_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C14_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C14_AXIS_TID_WIDTH PARAM_VALUE.C_H2C14_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C14_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C14_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C14_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C14_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C14_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C14_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C14_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H15_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_C2H15_AXIS_TUSER_WIDTH PARAM_VALUE.C_C2H15_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H15_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_C2H15_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H15_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_C2H15_AXIS_TID_WIDTH PARAM_VALUE.C_C2H15_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H15_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_C2H15_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H15_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_C2H15_AXIS_TDEST_WIDTH PARAM_VALUE.C_C2H15_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H15_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_C2H15_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C15_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_H2C15_AXIS_TUSER_WIDTH PARAM_VALUE.C_H2C15_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C15_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_H2C15_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C15_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_H2C15_AXIS_TID_WIDTH PARAM_VALUE.C_H2C15_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C15_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_H2C15_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C15_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_H2C15_AXIS_TDEST_WIDTH PARAM_VALUE.C_H2C15_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C15_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_H2C15_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_SSTM_AXI_S_TDATA_WIDTH { MODELPARAM_VALUE.C_SSTM_AXI_S_TDATA_WIDTH PARAM_VALUE.C_SSTM_AXI_S_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SSTM_AXI_S_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_SSTM_AXI_S_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C13_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C13_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C13_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C13_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C13_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C13_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C13_AXIS_START_COUNT PARAM_VALUE.C_H2C13_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C13_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C13_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_H2C05_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C05_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C05_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C05_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C05_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C05_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C05_AXIS_START_COUNT PARAM_VALUE.C_H2C05_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C05_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C05_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_C2H00_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H00_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H00_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H00_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H00_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H07_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H07_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H07_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H07_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H07_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H03_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H03_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H03_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H03_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H03_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H01_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H01_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H01_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H01_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H01_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H02_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H02_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H02_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H02_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H02_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C04_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C04_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C04_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C04_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C04_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C04_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C04_AXIS_START_COUNT PARAM_VALUE.C_H2C04_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C04_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C04_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_H2C01_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C01_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C01_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C01_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C01_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C01_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C01_AXIS_START_COUNT PARAM_VALUE.C_H2C01_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C01_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C01_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_H2C02_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C02_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C02_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C02_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C02_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C02_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C02_AXIS_START_COUNT PARAM_VALUE.C_H2C02_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C02_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C02_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_H2C03_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C03_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C03_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C03_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C03_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C03_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C03_AXIS_START_COUNT PARAM_VALUE.C_H2C03_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C03_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C03_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_C2H11_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H11_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H11_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H11_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H11_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H10_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H10_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H10_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H10_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H10_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C08_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C08_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C08_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C08_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C08_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C08_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C08_AXIS_START_COUNT PARAM_VALUE.C_H2C08_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C08_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C08_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_C2H09_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H09_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H09_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H09_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H09_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C09_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C09_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C09_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C09_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C09_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C09_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C09_AXIS_START_COUNT PARAM_VALUE.C_H2C09_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C09_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C09_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_C2H14_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H14_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H14_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H14_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H14_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C14_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C14_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C14_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C14_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C14_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C14_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C14_AXIS_START_COUNT PARAM_VALUE.C_H2C14_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C14_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C14_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_H2C12_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C12_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C12_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C12_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C12_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C12_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C12_AXIS_START_COUNT PARAM_VALUE.C_H2C12_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C12_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C12_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_H2C10_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C10_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C10_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C10_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C10_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C10_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C10_AXIS_START_COUNT PARAM_VALUE.C_H2C10_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C10_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C10_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_H2C00_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C00_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C00_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C00_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C00_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C00_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C00_AXIS_START_COUNT PARAM_VALUE.C_H2C00_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C00_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C00_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_H2C07_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C07_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C07_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C07_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C07_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C07_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C07_AXIS_START_COUNT PARAM_VALUE.C_H2C07_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C07_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C07_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_C2H05_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H05_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H05_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H05_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H05_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H08_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H08_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H08_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H08_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H08_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C15_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C15_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C15_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C15_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C15_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C15_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C15_AXIS_START_COUNT PARAM_VALUE.C_H2C15_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C15_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C15_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_H2C06_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C06_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C06_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C06_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C06_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C06_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C06_AXIS_START_COUNT PARAM_VALUE.C_H2C06_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C06_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C06_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_C2H13_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H13_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H13_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H13_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H13_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H12_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H12_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H12_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H12_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H12_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C11_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_H2C11_AXIS_TDATA_WIDTH PARAM_VALUE.C_H2C11_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C11_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_H2C11_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_H2C11_AXIS_START_COUNT { MODELPARAM_VALUE.C_H2C11_AXIS_START_COUNT PARAM_VALUE.C_H2C11_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_H2C11_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_H2C11_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_C2H06_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H06_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H06_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H06_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H06_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MSTM_AXI_S_TDATA_WIDTH { MODELPARAM_VALUE.C_MSTM_AXI_S_TDATA_WIDTH PARAM_VALUE.C_MSTM_AXI_S_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MSTM_AXI_S_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_MSTM_AXI_S_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MSTM_AXI_S_START_COUNT { MODELPARAM_VALUE.C_MSTM_AXI_S_START_COUNT PARAM_VALUE.C_MSTM_AXI_S_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MSTM_AXI_S_START_COUNT}] ${MODELPARAM_VALUE.C_MSTM_AXI_S_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_C2H04_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H04_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H04_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H04_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H04_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_C2H15_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_C2H15_AXIS_TDATA_WIDTH PARAM_VALUE.C_C2H15_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_C2H15_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_C2H15_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_NUM_STREAM_ITF { MODELPARAM_VALUE.C_NUM_STREAM_ITF PARAM_VALUE.C_NUM_STREAM_ITF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_STREAM_ITF}] ${MODELPARAM_VALUE.C_NUM_STREAM_ITF}
}

