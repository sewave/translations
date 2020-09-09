@echo off
set T_FILENAME="Skate or Die - Bad 'N Rad (USA).gb"
set SCRIPTNAME="skateordiebadnradgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
