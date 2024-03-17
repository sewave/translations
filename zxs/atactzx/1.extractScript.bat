@echo off
set T_FILENAME="A.T.A.C.tzx"
set SCRIPTNAME="atactzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
