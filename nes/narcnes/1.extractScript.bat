@echo off
set T_FILENAME="NARC (USA).nes"
set SCRIPTNAME="narcnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
