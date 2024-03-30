@echo off
set T_FILENAME="TR_Pendragon.tzx"
set SCRIPTNAME="pendragontzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
