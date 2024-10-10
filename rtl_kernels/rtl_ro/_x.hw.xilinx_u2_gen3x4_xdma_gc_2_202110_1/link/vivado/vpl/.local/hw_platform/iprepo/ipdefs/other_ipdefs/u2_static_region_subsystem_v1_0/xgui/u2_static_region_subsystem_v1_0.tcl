proc init_gui { IPINST } {

  ipgui::add_param $IPINST -name "Component_Name"
 
  set General_Config [ipgui::add_page $IPINST -name "General Configuration"]
  set XDMA_NUM_CHNL [ipgui::add_param $IPINST -name XDMA_NUM_CHNL -parent $General_Config]
  
}
