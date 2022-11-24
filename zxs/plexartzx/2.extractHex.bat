@echo off
set T_FILENAME="TR_Plexar.tzx"
set SCRIPTNAME="plexartzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
