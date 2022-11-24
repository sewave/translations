@echo off
set T_FILENAME="TR_Panther.tzx"
set SCRIPTNAME="panthertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
