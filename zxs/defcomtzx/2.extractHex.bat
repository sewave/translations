@echo off
set T_FILENAME="TR_Defcom.tzx"
set SCRIPTNAME="defcomtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
