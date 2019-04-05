@echo off
set T_FILENAME="TR_Elevator Action (Japan).sg"
set S_FILENAME="Elevator Action (Japan).sg"
set SCRIPTNAME="elevatoractionsg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
