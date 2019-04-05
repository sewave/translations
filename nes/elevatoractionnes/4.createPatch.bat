@echo off
set T_FILENAME="TR_Elevator Action (U) [!].nes"
set S_FILENAME="Elevator Action (U) [!].nes"
set SCRIPTNAME="elevatoractionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
