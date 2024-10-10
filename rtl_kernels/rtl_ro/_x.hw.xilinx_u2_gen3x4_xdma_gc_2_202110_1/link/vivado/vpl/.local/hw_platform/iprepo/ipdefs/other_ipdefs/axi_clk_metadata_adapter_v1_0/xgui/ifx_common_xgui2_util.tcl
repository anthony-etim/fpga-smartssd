set c_family [string tolower [get_project_property ARCHITECTURE]]

proc add_widgets { IPINST parent widget_spec } {
  foreach {param widget_type tooltip} $widget_spec {
    set widget [ipgui::add_param $IPINST -parent $parent -name $param -widget $widget_type]
    if {$tooltip != ""} {
      set_property tooltip $tooltip $widget
    }
  }
}

proc gen_param_table { IPINST  parent table_name table_prefix num_rows num_columns tl_text lcolumn_prefix param_prefix widget_order {j_iter 1}} {

  set table [ipgui::add_table $IPINST -name $table_name -rows $num_rows -columns $num_columns -parent $parent]

  set tl [ipgui::add_static_text $IPINST -name ${table_prefix}_HEADER_0 -parent $table -text $tl_text]
  set_property cell_location 0,0 $tl

  for {set i 0} {$i < [expr $num_rows-1]} {incr i } {
    set param [ipgui::add_static_text $IPINST -name ${table_prefix}${i}_LHS -parent $table -text "[subst $lcolumn_prefix]"]
    set_property cell_location [expr $i + 1],0 $param

    set column_num 1
    for {set j 0} {$j < $j_iter} {incr j} {
      foreach {column_title param_root widget_type} $widget_order {

        set actual_column_title [subst $column_title]

        if {![info exists headers($actual_column_title)]} {
          set header [ipgui::add_static_text $IPINST -name ${table_prefix}_HEADER_$i -parent $table -text $actual_column_title]
          set_property cell_location 0,$column_num $header
          array set headers [list $actual_column_title true]
        }

        set param_name [subst $param_prefix]_$param_root
        set param [ipgui::add_param $IPINST -parent $table -widget $widget_type -name $param_name]
        set_property cell_location [expr $i+1],$column_num $param
        incr column_num
      }
    }
  }
}

proc generate_direct_model_procs { direct_model_params } {
  set direct_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>>} {
      set_property value  [get_property value ${PARAM_VALUE.<<P>>}] ${MODELPARAM_VALUE.<<MP>>}
    }
  }
  foreach {p mp} $direct_model_params {
    set c [regsub -all "<<P>>" $direct_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    # 
    eval $c
  }
}


proc generate_map_model_procs_direct_mapping { map_model_params } {
  set map_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>>} {
      array set map [subst {<<MAP>>}]
      set_property value $map([get_property value ${PARAM_VALUE.<<P>>}]) ${MODELPARAM_VALUE.<<MP>>}
      # return true
    }
  }

  foreach {p mp map} $map_model_params {
    set c [regsub -all "<<P>>" $map_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    set c [regsub -all "<<MAP>>" $c $map]
    eval $c
  }
}
proc generate_map_model_procs_param_mapping { map_model_params } {
  set map_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>> PARAM_VALUE.<<EP>>} {
      array set map [subst {<<MAP>>}]
      set_property value $map([get_property value ${PARAM_VALUE.<<P>>}]) ${MODELPARAM_VALUE.<<MP>>}
      # return true
    }
  }

  foreach {p mp ep map} $map_model_params {
    set c [regsub -all "<<P>>" $map_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    set c [regsub -all "<<EP>>" $c $ep]
    set c [regsub -all "<<MAP>>" $c $map]
    eval $c
  }
}


proc generate_remap01_model_procs { direct_model_params } {
  set direct_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>>} {
      set p [get_property value ${PARAM_VALUE.<<P>>}]
      if {$p == 0} { set p 1 }
      set_property value $p ${MODELPARAM_VALUE.<<MP>>}
    }
  }
  foreach {p mp} $direct_model_params {
    set c [regsub -all "<<P>>" $direct_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    eval $c
  }
}
proc generate_map_model_procs { map_model_params } {
  set map_model_template {
    proc update_MODELPARAM_VALUE.<<MP>> {MODELPARAM_VALUE.<<MP>> PARAM_VALUE.<<P>>} {
      array set map [subst {<<MAP>>}]
      set_property value $map([get_property value ${PARAM_VALUE.<<P>>}]) ${MODELPARAM_VALUE.<<MP>>}
      # return true
    }
  }

  foreach {p mp map} $map_model_params {
    set c [regsub -all "<<P>>" $map_model_template $p]
    set c [regsub -all "<<MP>>" $c $mp]
    set c [regsub -all "<<MAP>>" $c $map]
    eval $c
  }
}

proc ifx_debug_enabled {} {
  global env
  if {[info exists env(XIL_IFX_DEBUG)]} {
    set n [namespace current]
    if {[string match "*$n*" $env(XIL_IFX_DEBUG)] || [string match "*IFX_ALL*" $env(XIL_IFX_DEBUG)]} {
      return 1
    }
  }
  return 0
}

proc ifx_debug_trace_enabled {} {
  global env
  if {[info exists env(XIL_IFX_TRACE)]} {
    set n [namespace current]
    if {[string match "*$n*" $env(XIL_IFX_TRACE)] || [string match "*IFX_ALL*" $env(XIL_IFX_TRACE)]} {
      return 1
    }
  }
  return 0
}

proc update_MODELPARAM_VALUE.C_S_AXIS_ACLK_RATIO {MODELPARAM_VALUE.C_S_AXIS_ACLK_RATIO PARAM_VALUE.ACLK_RATIO} {
  set_property value [lindex [split [get_property value ${PARAM_VALUE.ACLK_RATIO}] :] 0] [ipgui::get_modelparamspec C_S_AXIS_ACLK_RATIO -of $IPINST ]
  # return true
}

proc update_MODELPARAM_VALUE.C_M_AXIS_ACLK_RATIO {MODELPARAM_VALUE.C_M_AXIS_ACLK_RATIO PARAM_VALUE.ACLK_RATIO} {
  set_property value [lindex [split [get_property value ${PARAM_VALUE.ACLK_RATIO}] :] 1] [ipgui::get_modelparamspec C_M_AXIS_ACLK_RATIO -of $IPINST ]
  # return true
}



#Chnaged procs :
# - generate_direct_model_procs
# - generate_remap01_model_procs
# 
# Added procs :
# - generate_map_model_procs_param_mapping
# - generate_map_model_procs_direct_mapping
# 
# Not Updated :
# - gen_param_table
# - update_view