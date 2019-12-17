@echo off
set T_FILENAME="TR_Elevator Action (1985) (Taito) (J).rom"
set SCRIPTNAME="elevatoractionrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
