@echo off
set T_FILENAME="Blaster Master Boy (U).gb"
set SCRIPTNAME="blastermasterboygb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
