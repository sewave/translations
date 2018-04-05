@echo off
set T_FILENAME="TR_Rush'n Attack (U) [!].nes"
set SCRIPTNAME="rushnattacknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
