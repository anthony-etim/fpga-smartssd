namespace eval axi_hwicap_v3_0_utils {
  
  proc upgrade_from_axi_hwicap_v2_03_a {xciValues} {
       namespace import ::xcoUpgradeLib::\*
       upvar $xciValues valueArray
       namespace forget ::xcoUpgradeLib::\*
   }


  proc upgrade_from_axi_hwicap_v2_02_a {xciValues} {
       namespace import ::xcoUpgradeLib::\*
       upvar $xciValues valueArray
       addParameter C_SIMULATION 2 valueArray
       addParameter C_NOREAD false valueArray
       addParameter C_MODE false valueArray
       addParameter C_INCLUDE_STARTUP false valueArray
       addParameter C_ENABLE_ASYNC false valueArray
       removeParameter C_S_AXI_DATA_WIDTH valueArray
       removeParameter C_S_AXI_ADDR_WIDTH valueArray
      if {[string compare [getParameter C_ICAP_WIDTH_S valueArray] X32] == 0} {
         setParameter C_ICAP_DWIDTH 32 valueArray
      } elseif {[string compare [getParameter C_ICAP_WIDTH_S valueArray] X16] == 0} {
         setParameter C_ICAP_DWIDTH 16 valueArray
      } elseif {[string compare [getParameter C_ICAP_WIDTH_S valueArray] X8] == 0} {
         setParameter C_ICAP_DWIDTH 8 valueArray
      }
       removeParameter C_ICAP_WIDTH_S valueArray

       namespace forget ::xcoUpgradeLib::\*
   }
}

