@echo off
set T_FILENAME="Mad City (J) [T+ENG].nes"
set SCRIPTNAME="madcity"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
