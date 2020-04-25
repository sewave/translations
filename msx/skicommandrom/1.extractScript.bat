@echo off
set T_FILENAME="Ski Command (1984)(Casio).rom"
set SCRIPTNAME="skicommandrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
