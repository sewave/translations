@echo off
set T_FILENAME="TR_Daedalian Opus (USA).gb"
set SCRIPTNAME="daedalianopusgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6940:50,6B30:50,7B30:100
pause
