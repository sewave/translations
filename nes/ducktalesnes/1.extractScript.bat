@echo off
set T_FILENAME="DuckTales (USA).nes"
set SCRIPTNAME="ducktalesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
