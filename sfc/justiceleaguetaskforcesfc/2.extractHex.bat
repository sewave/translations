@echo off
set T_FILENAME="TR_Justice League Task Force (USA).sfc"
set SCRIPTNAME="justiceleaguetaskforcesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
