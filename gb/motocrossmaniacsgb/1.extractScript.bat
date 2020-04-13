@echo off
set T_FILENAME="Motocross Maniacs (U) [!].gb"
set SCRIPTNAME="motocrossmaniacsgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
