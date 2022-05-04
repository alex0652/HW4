VERILOG = iverilog
TARGET = BCD.vcd

$(TARGET) : BCD.vvp
	vvp BCD.vvp

BCD.vvp: BCD_tb.v BCD.v
	$(VERILOG) -o BCD.vvp BCD_tb.v BCD.v

clean:
	del $(TARGET)