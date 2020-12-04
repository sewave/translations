@echo off
set T_FILENAME="Alien 3 (USA).sfc"
set SCRIPTNAME="alien3sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
