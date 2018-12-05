@echo off
set T_FILENAME="TR_Coca Cola Kid (J) [T+ENG].gg"
set SCRIPTNAME="cocacolakidgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
