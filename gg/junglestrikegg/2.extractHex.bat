@echo off
set T_FILENAME="TR_Jungle Strike (USA).gg"
set SCRIPTNAME="junglestrikegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
