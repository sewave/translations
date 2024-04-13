@echo off
set T_FILENAME="Demonslair.tzx"
set SCRIPTNAME="demonslairtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
