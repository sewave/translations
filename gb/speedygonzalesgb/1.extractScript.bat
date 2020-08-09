@echo off
set T_FILENAME="Speedy Gonzales (USA, Europe).gb"
set SCRIPTNAME="speedygonzalesgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
