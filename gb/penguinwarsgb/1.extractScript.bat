@echo off
set T_FILENAME="Penguin Wars (USA).gb"
set SCRIPTNAME="penguinwarsgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
