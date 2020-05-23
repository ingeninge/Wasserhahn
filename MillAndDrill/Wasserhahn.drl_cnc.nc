(G-CODE GENERATED BY FLATCAM v8.993 - www.flatcam.org - Version Date: 2020/08/01)

(Name: Wasserhahn.drl_cnc)
(Type: G-code from Excellon)
(Units: MM)

(Created on Sonntag, 17 Mai 2020 at 18:55)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.4)
(Tool: 2 -> Dia: 0.6)
(Tool: 3 -> Dia: 0.8)
(Tool: 4 -> Dia: 1.0)
(Tool: 5 -> Dia: 1.3)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 100.0)
(Tool: 2 -> Feedrate: 100.0)
(Tool: 3 -> Feedrate: 100.0)
(Tool: 4 -> Feedrate: 100.0)
(Tool: 5 -> Feedrate: 100.0)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)
(Tool: 3 -> Feedrate Rapids: 1500)
(Tool: 4 -> Feedrate Rapids: 1500)
(Tool: 5 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.8)
(Tool: 2 -> Z_Cut: -1.8)
(Tool: 3 -> Z_Cut: -1.8)
(Tool: 4 -> Z_Cut: -1.8)
(Tool: 5 -> Z_Cut: -1.8)

(Tools Offset: )
(Tool: 1 -> Offset Z: -0.0)
(Tool: 2 -> Offset Z: -0.0)
(Tool: 3 -> Offset Z: -0.0)
(Tool: 4 -> Offset Z: -0.0)
(Tool: 5 -> Offset Z: -0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2)
(Tool: 2 -> Z_Move: 2)
(Tool: 3 -> Z_Move: 2)
(Tool: 4 -> Z_Move: 2)
(Tool: 5 -> Z_Move: 2)

(Z Start: None mm)
(Z End: 2.0 mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:    1.3780 ...   68.5650  mm)
(Y range:    7.7800 ...   75.9900  mm)

(Spindle Speed: None RPM)
G21
G90
G94



G00 Z2.0000

G01 F100.00
M03
G00 X23.1140 Y33.9340
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G01 F100.00
M03
G00 X22.8600 Y64.1600
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X20.8600 Y64.1600
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X43.8150 Y30.6000
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X43.8150 Y28.6000
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G01 F100.00
M03
G00 X41.2750 Y50.1900
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X46.9900 Y40.0300
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X36.1950 Y33.6800
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X31.7500 Y31.7750
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X33.0200 Y23.5200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X36.1950 Y23.5200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X33.0200 Y18.4400
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X30.0740 Y16.3580
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X25.4000 Y13.3600
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X15.2400 Y13.3600
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X22.8600 Y18.4400
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X22.8600 Y23.5200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X19.6850 Y23.5200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X14.6850 Y23.5200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X8.2550 Y23.5200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X1.7780 Y23.5200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X9.1440 Y31.6480
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X8.4330 Y36.7790
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X18.5420 Y33.9340
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X19.3040 Y31.6480
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X21.5900 Y31.7750
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X23.1140 Y33.9340
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X21.5900 Y36.2200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X13.9700 Y64.1600
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X13.9700 Y75.5900
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X24.7400 Y65.4300
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X26.6700 Y61.6200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X34.9000 Y65.4300
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X36.8300 Y61.6200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X46.9900 Y65.4300
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X49.4900 Y65.4300
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X46.9900 Y50.1900
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G01 F100.00
M03
G00 X31.7500 Y28.6000
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X29.2100 Y28.6000
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X26.6700 Y28.6000
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X24.1300 Y28.6000
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X24.1300 Y71.7800
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X26.6700 Y71.7800
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X29.2100 Y71.7800
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X31.7500 Y71.7800
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X34.2900 Y71.7800
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X52.6650 Y52.9200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X68.0650 Y52.9200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X62.8650 Y23.5200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X57.8650 Y23.5200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X33.0200 Y10.8200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X33.0200 Y8.2800
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X30.4800 Y8.2800
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X30.4800 Y10.8200
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G01 F100.00
M03
G00 X54.3700 Y10.1850
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X49.3700 Y10.1850
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X44.3700 Y10.1850
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X39.3700 Y10.1850
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X61.0400 Y10.1850
G01 Z-1.8000
G01 Z0
G00 Z2.0000
G00 X66.0400 Y10.1850
G01 Z-1.8000
G01 Z0
G00 Z2.0000
M05
G00 Z2.00

