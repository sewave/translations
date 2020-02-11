@echo off
set T_FILENAME="Deadly Towers (USA).nes"
set SCRIPTNAME="deadlytowersnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
