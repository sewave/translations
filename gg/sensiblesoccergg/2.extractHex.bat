@echo off
set T_FILENAME="TR_Sensible Soccer (E).gg"
set SCRIPTNAME="sensiblesoccergg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
