@echo off
set T_FILENAME="TR_Elevator Action (Japan).sg"
set SCRIPTNAME="elevatoractionsg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
