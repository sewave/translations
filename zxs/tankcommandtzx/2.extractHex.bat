@echo off
set T_FILENAME="TR_Tank Command.tzx"
set SCRIPTNAME="tankcommandtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
