@echo off
set T_FILENAME="Panzadrome.tzx"
set SCRIPTNAME="panzadrometzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
