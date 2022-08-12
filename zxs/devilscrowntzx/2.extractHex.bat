@echo off
set T_FILENAME="TR_Devil's Crown.tzx"
set SCRIPTNAME="devilscrowntzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B89B:300
pause
