VIVADO := $(XILINX_VIVADO)/bin/vivado
$(TEMP_DIR)/ro.xo: src/krnl_ro/package_kernel.tcl src/krnl_ro/gen_xo.tcl src/krnl_ro/hdl/*.sv src/krnl_ro/hdl/*.v 
	mkdir -p $(TEMP_DIR)
	$(VIVADO) -mode batch -source src/krnl_ro/gen_xo.tcl -tclargs $(TEMP_DIR)/ro.xo $(TARGET) $(PLATFORM) $(XSA)
