@echo off
set T_FILENAME="TR_Klax (USA).gb"
set SCRIPTNAME="klaxgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
