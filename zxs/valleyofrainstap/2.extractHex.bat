@echo off
set T_FILENAME="TR_Valley_of_Rains.tap"
set SCRIPTNAME="valleyofrainstap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
