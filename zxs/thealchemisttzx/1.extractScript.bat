@echo off
set T_FILENAME="The Alchemist.tzx"
set SCRIPTNAME="thealchemisttzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
