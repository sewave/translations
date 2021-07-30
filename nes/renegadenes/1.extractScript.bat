@echo off
set T_FILENAME="Renegade (USA).nes"
set SCRIPTNAME="renegadenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
