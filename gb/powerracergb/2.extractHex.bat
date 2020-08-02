@echo off
set T_FILENAME="TR_Power Racer (USA).gb"
set SCRIPTNAME="powerracergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
