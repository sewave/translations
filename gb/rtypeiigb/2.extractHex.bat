@echo off
set T_FILENAME="TR_R-Type II (U).gb"
set SCRIPTNAME="rtypeiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
