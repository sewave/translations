@echo off
set T_FILENAME="AirForce Delta (USA).gbc"
set SCRIPTNAME="airforcedeltagbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
