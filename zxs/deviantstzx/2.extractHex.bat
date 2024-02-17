@echo off
set T_FILENAME="TR_Deviants.tzx"
set SCRIPTNAME="deviantstzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
