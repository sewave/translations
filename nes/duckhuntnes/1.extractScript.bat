@echo off
set T_FILENAME="Duck Hunt (W) [!].nes"
set SCRIPTNAME="duckhuntnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
