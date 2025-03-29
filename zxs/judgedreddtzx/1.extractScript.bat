@echo off
set T_FILENAME="Judge Dredd.tzx"
set SCRIPTNAME="judgedreddtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
