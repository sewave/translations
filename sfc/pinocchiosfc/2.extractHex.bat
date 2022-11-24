@echo off
set T_FILENAME="TR_Pinocchio (USA).sfc"
set SCRIPTNAME="pinocchiosfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
