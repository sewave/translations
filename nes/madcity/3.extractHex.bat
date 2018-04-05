@echo off
set T_FILENAME="TR_Mad City (J) [T+ENG].nes"
set SCRIPTNAME="madcity"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
