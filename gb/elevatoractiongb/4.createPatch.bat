@echo off
set T_FILENAME="TR_Elevator Action (U) [!].gb"
set S_FILENAME="Elevator Action (U) [!].gb"
set SCRIPTNAME="elevatoractiongb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
