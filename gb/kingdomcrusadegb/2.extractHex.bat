@echo off
set T_FILENAME="TR_Kingdom Crusade (USA).gb"
set SCRIPTNAME="kingdomcrusadegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C840:100
pause
