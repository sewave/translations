@echo off
set T_FILENAME="TR_Twin Cobra (U) [!].nes"
set S_FILENAME="Twin Cobra (U) [!].nes"
set SCRIPTNAME="twincobranes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
