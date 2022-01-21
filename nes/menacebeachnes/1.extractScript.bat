@echo off
set T_FILENAME="Menace Beach (USA) (Unl).nes"
set SCRIPTNAME="menacebeachnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
