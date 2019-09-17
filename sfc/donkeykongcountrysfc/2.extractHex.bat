@echo off
set T_FILENAME="TR_Donkey Kong Country (U) (V1.2) [!].smc"
set SCRIPTNAME="donkeykongcountrysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 29DA9C:A0,29DC8C:120,29E0DC:A0,29E2CC:120,29D75C:40,29D89C:60,29DD9C:40,28DEDC:60
pause
