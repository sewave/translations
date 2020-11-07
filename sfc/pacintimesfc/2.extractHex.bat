@echo off
set T_FILENAME="TR_Pac-In-Time (USA).sfc"
set SCRIPTNAME="pacintimesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
