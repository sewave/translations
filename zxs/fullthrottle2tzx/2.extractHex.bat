@echo off
set T_FILENAME="TR_Full Throttle 2.tzx"
set SCRIPTNAME="fullthrottle2tzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 51B1:28
pause
