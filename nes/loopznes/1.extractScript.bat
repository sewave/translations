@echo off
set T_FILENAME="Loopz (USA).nes"
set SCRIPTNAME="loopznes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
