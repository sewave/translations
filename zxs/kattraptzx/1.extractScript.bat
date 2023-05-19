@echo off
set T_FILENAME="Kat Trap.tzx"
set SCRIPTNAME="kattraptzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
