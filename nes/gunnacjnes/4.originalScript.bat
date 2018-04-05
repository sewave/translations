@echo off
set T_FILENAME="Gun-Nac (J) [T+ENG].nes"
set SCRIPTNAME="gunnacjnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
