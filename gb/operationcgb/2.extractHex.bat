@echo off
set T_FILENAME="TR_Operation C (USA).gb"
set SCRIPTNAME="operationcgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
