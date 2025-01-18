@echo off
set T_FILENAME="TR_Mysterium (USA).gb"
set SCRIPTNAME="mysteriumgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
