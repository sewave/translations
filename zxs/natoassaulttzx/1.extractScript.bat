@echo off
set T_FILENAME="Nato Assault.tzx"
set SCRIPTNAME="natoassaulttzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
