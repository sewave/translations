@echo off
set T_FILENAME="TR_Knuckle Busters.tzx"
set SCRIPTNAME="knucklebusterstzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
