@echo off
set T_FILENAME="Killer Instinct (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="killerinstinctgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
