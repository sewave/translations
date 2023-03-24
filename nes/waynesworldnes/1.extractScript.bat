@echo off
set T_FILENAME="Wayne's World (USA).nes"
set SCRIPTNAME="waynesworldnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
