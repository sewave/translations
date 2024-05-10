@echo off
set T_FILENAME="Who Dares Wins II.tzx"
set SCRIPTNAME="whodareswinsiitzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
