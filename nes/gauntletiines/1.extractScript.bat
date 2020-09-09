@echo off
set T_FILENAME="Gauntlet II (USA).nes"
set SCRIPTNAME="gauntletiines"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
