; Setup
G21                          ;metric values
G90                          ;absolute positioning
M82                          ;set extruder to absolute mode
M107                         ;start with the fan off

; Home and extrude a little bit of filament
G28 X0 Y0                    ;move X/Y to min endstops
G28 Z0                       ;move Z to min endstops
G1 Z15.0 F{travel_speed}     ;move the platform down 15mm
G92 E0                       ;zero the extruded length
G1 F200 E6                   ;extrude 6mm of feed stock
G92 E0                       ;zero the extruded length again

; Draw a line that primes the nozzle
G1 F10000                    ; SET FEEDRATE FAST
G1 Z2                        ; RAISE Z-AXIS TO 2MM
G1 X20 Y-3                   ; MOVE CLOSE TO HOME
G1 Z.1                       ; LOWER Z-AXIS TO .1MM
G1 F1500                     ; SET FEEDRATE SLOW
G1 X200 E10                  ; CLEAR FILLAMENT

G1 F{travel_speed}
;Put printing message on LCD screen
M117 Printing...
