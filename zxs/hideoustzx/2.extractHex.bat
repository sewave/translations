@echo off
set T_FILENAME="TR_Hideous.tzx"
set SCRIPTNAME="hideoustzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7981:38
pause
