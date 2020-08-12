@echo off
set T_FILENAME="TR_D-Force (USA).sfc"
set SCRIPTNAME="dforcesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
