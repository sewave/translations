@echo off
set T_FILENAME="Metropolis - Loading Screen Fix.tzx"
set SCRIPTNAME="metropolistzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
