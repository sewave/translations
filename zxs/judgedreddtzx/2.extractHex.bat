@echo off
set T_FILENAME="TR_Judge Dredd.tzx"
set SCRIPTNAME="judgedreddtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
