# (c) Copyright 2019 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
############################################################
#remove any old files from previous run
exec rm -rf component.xml
exec rm -rf xgui

###################################################
#create ip
###########
#create project
create_project project_1 . -part xck115-flvb2104-2-e
#set_property board_part xilinx.com:zc702:part0:1.2 [current_project]

#set magic settings
#### this one is to enable the fifo_generator instantiation
set_property XPM_LIBRARIES {XPM_FIFO} [current_project]

#add hdl files
add_files ./hdl

#package the project as an IP
ipx::package_project -root_dir ./ -vendor xilinx.com -library user -taxonomy /UserIP

#configure info settings for IP
set_property library ip [ipx::current_core]
set_property name Trace_Monitor_AXI_Master [ipx::current_core]
set_property display_name Trace_Monitor_AXI_Master_v1_0 [ipx::current_core]
set_property description {AXI Master Trace Monitor} [ipx::current_core]
set_property vendor_display_name {Xilinx Inc.} [ipx::current_core]
set_property company_url http://www.xilinx.com [ipx::current_core]
set_property taxonomy /BaseIP [ipx::current_core]
set_property supported_families {} [ipx::current_core]
set_property supported_families {virtex7 Beta qvirtex7 Beta kintex7 Beta kintex7l Beta qkintex7 Beta qkintex7l Beta artix7 Beta artix7l Beta aartix7 Beta qartix7 Beta zynq Beta qzynq Beta azynq Beta spartan7 Beta virtexu Beta virtexuplus Beta kintexuplus Beta zynquplus Beta kintexu Beta} [ipx::current_core]

#setup ip_repo paths for sdsoc_trace bus
set_property  ip_repo_paths  .. [current_project]
update_ip_catalog

#remove any auto-created buses
set existing_buses [ipx::get_bus_interfaces]
for {set idx 0} {$idx < [llength $existing_buses]} {incr idx} {
    set bus [lindex $existing_buses $idx]
    set name [lindex $bus 2]
    #remove any axis fifo buses
    if {[string first "m_axi" $name] > -1} {
	ipx::remove_bus_interface $name [ipx::current_core]
    }
    if {[string first "s_axi" $name] > -1} {
	ipx::remove_bus_interface $name [ipx::current_core]
    }
}

#remove memory maps
set existing_maps [ipx::get_memory_maps]
for {set idx 0} {$idx < [llength $existing_maps]} {incr idx} {
    set name [lindex [lindex $existing_maps $idx] 2]
    ipx::remove_memory_map $name [ipx::current_core]
}

#setup mon_clk
ipx::infer_bus_interface mon_clk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]

#setup axi lite bus
ipx::add_bus_interface S_AXI [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property display_name S_AXI [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property description S_AXI [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
ipx::add_port_map BVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_bvalid [ipx::get_port_maps BVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_rready [ipx::get_port_maps RREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_bready [ipx::get_port_maps BREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_awvalid [ipx::get_port_maps AWVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_awready [ipx::get_port_maps AWREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWPROT [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_awprot [ipx::get_port_maps AWPROT -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WDATA [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_wdata [ipx::get_port_maps WDATA -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RRESP [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_rresp [ipx::get_port_maps RRESP -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARPROT [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_arprot [ipx::get_port_maps ARPROT -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_rvalid [ipx::get_port_maps RVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARADDR [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_araddr [ipx::get_port_maps ARADDR -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWADDR [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_awaddr [ipx::get_port_maps AWADDR -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_arready [ipx::get_port_maps ARREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_wvalid [ipx::get_port_maps WVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WREADY [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_wready [ipx::get_port_maps WREADY -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARVALID [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_arvalid [ipx::get_port_maps ARVALID -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WSTRB [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_wstrb [ipx::get_port_maps WSTRB -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BRESP [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_bresp [ipx::get_port_maps BRESP -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RDATA [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property physical_name s_axi_rdata [ipx::get_port_maps RDATA -of_objects [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]]

#create monitored M_AXI bus
ipx::add_bus_interface MON_M_AXI [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property interface_mode monitor [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property display_name MON_M_AXI [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property description MON_M_AXI [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
ipx::add_port_map WLAST [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_WLAST [ipx::get_port_maps WLAST -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BREADY [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_BREADY [ipx::get_port_maps BREADY -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWREADY [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWREADY [ipx::get_port_maps AWREADY -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWLEN [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWLEN [ipx::get_port_maps AWLEN -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWQOS [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWQOS [ipx::get_port_maps AWQOS -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARBURST [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARBURST [ipx::get_port_maps ARBURST -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BUSER [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_BUSER [ipx::get_port_maps BUSER -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWPROT [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWPROT [ipx::get_port_maps AWPROT -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RRESP [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_RRESP [ipx::get_port_maps RRESP -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARPROT [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARPROT [ipx::get_port_maps ARPROT -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RVALID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_RVALID [ipx::get_port_maps RVALID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARLOCK [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARLOCK [ipx::get_port_maps ARLOCK -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWID [ipx::get_port_maps AWID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RLAST [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_RLAST [ipx::get_port_maps RLAST -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARID [ipx::get_port_maps ARID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WUSER [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_WUSER [ipx::get_port_maps WUSER -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWCACHE [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWCACHE [ipx::get_port_maps AWCACHE -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WREADY [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_WREADY [ipx::get_port_maps WREADY -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WSTRB [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_WSTRB [ipx::get_port_maps WSTRB -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BRESP [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_BRESP [ipx::get_port_maps BRESP -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_BID [ipx::get_port_maps BID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWUSER [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWUSER [ipx::get_port_maps AWUSER -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARLEN [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARLEN [ipx::get_port_maps ARLEN -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARQOS [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARQOS [ipx::get_port_maps ARQOS -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RDATA [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_RDATA [ipx::get_port_maps RDATA -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARCACHE [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARCACHE [ipx::get_port_maps ARCACHE -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RREADY [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_RREADY [ipx::get_port_maps RREADY -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map BVALID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_BVALID [ipx::get_port_maps BVALID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWVALID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWVALID [ipx::get_port_maps AWVALID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARREGION [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARREGION [ipx::get_port_maps ARREGION -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARSIZE [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARSIZE [ipx::get_port_maps ARSIZE -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WDATA [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_WDATA [ipx::get_port_maps WDATA -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARUSER [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARUSER [ipx::get_port_maps ARUSER -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWSIZE [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWSIZE [ipx::get_port_maps AWSIZE -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_RID [ipx::get_port_maps RID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWREGION [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWREGION [ipx::get_port_maps AWREGION -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARADDR [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARADDR [ipx::get_port_maps ARADDR -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_WID [ipx::get_port_maps WID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWADDR [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWADDR [ipx::get_port_maps AWADDR -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARREADY [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARREADY [ipx::get_port_maps ARREADY -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map WVALID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_WVALID [ipx::get_port_maps WVALID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map ARVALID [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_ARVALID [ipx::get_port_maps ARVALID -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map RUSER [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_RUSER [ipx::get_port_maps RUSER -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWLOCK [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWLOCK [ipx::get_port_maps AWLOCK -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]
ipx::add_port_map AWBURST [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]
set_property physical_name m_axi_AWBURST [ipx::get_port_maps AWBURST -of_objects [ipx::get_bus_interfaces MON_M_AXI -of_objects [ipx::current_core]]]


#create monitored AP_CTRL bus
ipx::add_bus_interface MON_AP_CTRL [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property interface_mode monitor [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property display_name MON_AP_CTRL [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property description MON_AP_CTRL [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:acc_handshake_rtl:1.0 [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:acc_handshake:1.0 [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
ipx::add_port_map start [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property physical_name ap_start [ipx::get_port_maps start -of_objects [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]]
ipx::add_port_map idle [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property physical_name ap_idle [ipx::get_port_maps idle -of_objects [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]]
ipx::add_port_map done [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property physical_name ap_done [ipx::get_port_maps done -of_objects [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]]
ipx::add_port_map continue [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property physical_name ap_continue [ipx::get_port_maps continue -of_objects [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]]
ipx::add_port_map ready [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property physical_name ap_ready [ipx::get_port_maps ready -of_objects [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]]

#setup trace output bus 0 for read
ipx::add_bus_interface TRACE_OUT_0 [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:interface:sdsoc_trace_v2_0_rtl:2.0 [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:sdsoc_trace:2.0 [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property interface_mode master [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property display_name TRACE_OUT_0 [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property description TRACE_OUT_0 [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
ipx::add_port_map counter [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property physical_name rtrace_counter [ipx::get_port_maps counter -of_objects [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]]
ipx::add_port_map read [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property physical_name rtrace_read [ipx::get_port_maps read -of_objects [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]]
ipx::add_port_map event [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property physical_name rtrace_event [ipx::get_port_maps event -of_objects [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]]
ipx::add_port_map data [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property physical_name rtrace_data [ipx::get_port_maps data -of_objects [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]]
ipx::add_port_map counter_overflow [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property physical_name rtrace_counter_overflow [ipx::get_port_maps counter_overflow -of_objects [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]]
ipx::add_port_map valid [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property physical_name rtrace_valid [ipx::get_port_maps valid -of_objects [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]]

#setup trace bus 1 for write
ipx::add_bus_interface TRACE_OUT_1 [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property interface_mode master [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property display_name TRACE_OUT_1 [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property description TRACE_OUT_1 [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:sdsoc_trace_v2_0_rtl:2.0 [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:interface:sdsoc_trace:2.0 [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
ipx::add_port_map counter [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property physical_name wtrace_counter [ipx::get_port_maps counter -of_objects [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]]
ipx::add_port_map read [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property physical_name wtrace_read [ipx::get_port_maps read -of_objects [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]]
ipx::add_port_map event [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property physical_name wtrace_event [ipx::get_port_maps event -of_objects [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]]
ipx::add_port_map data [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property physical_name wtrace_data [ipx::get_port_maps data -of_objects [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]]
ipx::add_port_map counter_overflow [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property physical_name wtrace_counter_overflow [ipx::get_port_maps counter_overflow -of_objects [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]]
ipx::add_port_map valid [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property physical_name wtrace_valid [ipx::get_port_maps valid -of_objects [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]]

#enablement of buses
set_property enablement_value false [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property enablement_dependency "spirit:decode(id('PARAM_VALUE.EN_AXI_LITE')) > 0" [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
set_property enablement_value true [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property enablement_dependency "spirit:decode(id('PARAM_VALUE.EN_TRACE')) > 0" [ipx::get_bus_interfaces TRACE_OUT_0 -of_objects [ipx::current_core]]
set_property enablement_value true [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property enablement_dependency "spirit:decode(id('PARAM_VALUE.EN_TRACE')) > 0" [ipx::get_bus_interfaces TRACE_OUT_1 -of_objects [ipx::current_core]]
set_property enablement_value true [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]
set_property enablement_dependency "spirit:decode(id('PARAM_VALUE.CAPTURE_BURSTS')) == 0" [ipx::get_bus_interfaces MON_AP_CTRL -of_objects [ipx::current_core]]

set_property enablement_value true [ipx::get_bus_interfaces trace_clk -of_objects [ipx::current_core]]
set_property enablement_dependency {$EN_TRACE > 0} [ipx::get_bus_interfaces trace_clk -of_objects [ipx::current_core]]
set_property enablement_value true [ipx::get_bus_interfaces trace_rst -of_objects [ipx::current_core]]
set_property enablement_dependency {$EN_TRACE > 0} [ipx::get_bus_interfaces trace_rst -of_objects [ipx::current_core]]


#setup S_AXI memory map
ipx::add_memory_map S_AXI [ipx::current_core]
set_property slave_memory_map_ref S_AXI [ipx::get_bus_interfaces S_AXI -of_objects [ipx::current_core]]
ipx::add_address_block reg0 [ipx::get_memory_maps S_AXI -of_objects [ipx::current_core]]
set_property range 16384 [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps S_AXI -of_objects [ipx::current_core]]]

#associate clocks with buses
ipx::associate_bus_interfaces -busif S_AXI -clock mon_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif MON_M_AXI -clock mon_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif MON_AP_CTRL -clock mon_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif TRACE_OUT_0 -clock trace_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif TRACE_OUT_1 -clock trace_clk [ipx::current_core]

#disassociate reset
ipx::associate_bus_interfaces -clock trace_clk -reset trace_rst -clear [ipx::current_core]

#set default values
set_property driver_value 0 [ipx::get_ports ap_continue -of_objects [ipx::current_core]]
set_property driver_value 0 [ipx::get_ports ap_ready -of_objects [ipx::current_core]]

#hide parameters
set param_list [list ADDR_WIDTH DATA_WIDTH ARUSER_WIDTH AWUSER_WIDTH BUSER_WIDTH RUSER_WIDTH WUSER_WIDTH]
for {set idx 0} {$idx < [llength $param_list]} {incr idx} {
    set param [lindex $param_list $idx]
    ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name $param -component [ipx::current_core]]
}
#for {set idx 0} {$idx < 8} {incr idx} {
#    ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name C_INSCALAR_${idx}_BITS -component [ipx::current_core]]
#    ipgui::remove_param -component [ipx::current_core] [ipgui::get_guiparamspec -name C_OUTSCALAR_${idx}_BITS -component [ipx::current_core]]
#}

#configure GUI widget for parameters
set_property widget {checkBox} [ipgui::get_guiparamspec -name "EN_AXI_LITE" -component [ipx::current_core] ]
set_property value false [ipx::get_user_parameters EN_AXI_LITE -of_objects [ipx::current_core]]
set_property value false [ipx::get_hdl_parameters EN_AXI_LITE -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_user_parameters EN_AXI_LITE -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_hdl_parameters EN_AXI_LITE -of_objects [ipx::current_core]]
set_property widget {checkBox} [ipgui::get_guiparamspec -name "EN_TRACE" -component [ipx::current_core] ]
set_property value true [ipx::get_user_parameters EN_TRACE -of_objects [ipx::current_core]]
set_property value true [ipx::get_hdl_parameters EN_TRACE -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_user_parameters EN_TRACE -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_hdl_parameters EN_TRACE -of_objects [ipx::current_core]]
set_property widget {checkBox} [ipgui::get_guiparamspec -name "CAPTURE_BURSTS" -component [ipx::current_core] ]
set_property value false [ipx::get_user_parameters CAPTURE_BURSTS -of_objects [ipx::current_core]]
set_property value false [ipx::get_hdl_parameters CAPTURE_BURSTS -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_user_parameters CAPTURE_BURSTS -of_objects [ipx::current_core]]
set_property value_format bool [ipx::get_hdl_parameters CAPTURE_BURSTS -of_objects [ipx::current_core]]

#setup bd.tcl
ipx::add_file_group -type utility {} [ipx::current_core]
set_property name xilinx_blockdiagram [ipx::get_file_groups xilinx_utilityxitfiles -of_objects [ipx::current_core]]
set_property display_name {Block Diagram} [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]
set_property env_ids :vivado.xilinx.com:block.diagram [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]
set_property type block_diagram [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]
ipx::add_file ./bd/bd.tcl [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]
set_property type tclSource [ipx::get_files ./bd/bd.tcl -of_objects [ipx::get_file_groups xilinx_blockdiagram -of_objects [ipx::current_core]]]


#other misc configuration
set_property core_revision 1 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
#close_p
