onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab2/a
add wave -noupdate /lab2/b
add wave -noupdate /lab2/cin
add wave -noupdate /lab2/sum
add wave -noupdate /lab2/cout
add wave -noupdate /lab2/HEX1
add wave -noupdate /lab2/HEX0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1895 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {1863 ps} {2087 ps}
