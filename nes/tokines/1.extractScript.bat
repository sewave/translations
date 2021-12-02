@echo off
set T_FILENAME="Toki (USA).nes"
set SCRIPTNAME="tokines"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
