@echo off
set T_FILENAME="TR_Who Dares Wins II.tzx"
set SCRIPTNAME="whodareswinsiitzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
