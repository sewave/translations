@echo off
set T_FILENAME="TR_Podder.tzx"
set SCRIPTNAME="poddertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 37E4:10,387C:10
pause
