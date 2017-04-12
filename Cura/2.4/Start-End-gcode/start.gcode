G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off
G28 ;Home all axes (max endstops)

M0 Add PROBE
M106 S255 ;	Turn fan on 100% power, cool the probe
M117 Auto leveling...
G29   ; DAQ -- auto level
M500
G1 x0 y0
M0 Remove PROBE

G1 Z75.0 F9000 ;move the platform down 15mm
G92 E0 ;zero the extruded length
G1 F200 E3 ;extrude 3mm of feed stock
G92 E0 ;zero the extruded length again

G1 Z100 F9000
M0 CLEAN ME...

M106 S191 ;	Turn fan on 50% power

G1 F9000
M117 Printing...