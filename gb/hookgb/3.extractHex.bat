@echo off
set T_FILENAME="TR_Hook (U).gb"
set SCRIPTNAME="hookgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36FA:10
pause
