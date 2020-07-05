@echo off
set T_FILENAME="Gyruss (USA).nes"
set SCRIPTNAME="gyrussnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
