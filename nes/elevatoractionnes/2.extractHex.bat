@echo off
set T_FILENAME="TR_Elevator Action (U) [!].nes"
set SCRIPTNAME="elevatoractionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 89C0:20
pause
