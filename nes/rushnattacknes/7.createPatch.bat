@echo off
set T_FILENAME="TR_Rush'n Attack (U) [!].nes"
set S_FILENAME="Rush'n Attack (U) [!].nes"
set SCRIPTNAME="rushnattacknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
