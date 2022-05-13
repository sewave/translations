@echo off
set T_FILENAME="TR_Firelord.tzx"
set SCRIPTNAME="firelordtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
