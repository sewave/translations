@echo off
set T_FILENAME="TR_from_below_2020_09_16_v_1_0_0.nes"
set SCRIPTNAME="frombelow20200916v100nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
