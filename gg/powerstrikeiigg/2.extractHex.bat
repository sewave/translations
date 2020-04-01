@echo off
set T_FILENAME="TR_Power Strike II (U).gg"
set SCRIPTNAME="powerstrikeiigg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
