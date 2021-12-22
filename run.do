vsim work.integ
view wave
add wave -position insertpoint  \
sim:/integ/Clk \
sim:/integ/Rst \
sim:/integ/SFD \
sim:/integ/SRD \
sim:/integ/SW \
sim:/integ/SFA \
sim:/integ/ST \
sim:/integ/fdoor \
sim:/integ/rdoor \
sim:/integ/winbuzz \
sim:/integ/alarmbuzz \
sim:/integ/heater \
sim:/integ/cooler \
sim:/integ/display

force -freeze sim:/integ/Clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/integ/Rst 1 0
force -freeze sim:/integ/SFD 0 0
force -freeze sim:/integ/SRD 0 0
force -freeze sim:/integ/SW 0 0
force -freeze sim:/integ/SFA 0 0
# temp = 60
force -freeze sim:/integ/ST X\"3C\" 0
run
run
force -freeze sim:/integ/SRD 1 0
force -freeze sim:/integ/Rst 0 0
run
run
force -freeze sim:/integ/SFD 1 0
run
run
# temp = 50
force -freeze sim:/integ/ST X\"32\" 0
force -freeze sim:/integ/SFD 0 0
force -freeze sim:/integ/SRD 0 0
run
run
# temp = 40
force -freeze sim:/integ/ST X\"28\" 0
run
run
# temp = 90
force -freeze sim:/integ/ST X\"5A\" 0
run
run
