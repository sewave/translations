@echo off
set T_FILENAME="TR_Elevator Action (U) [!].gb"
set SCRIPTNAME="elevatoractiongb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C280:60,
pause
