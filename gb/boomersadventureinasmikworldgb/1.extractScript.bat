@echo off
set T_FILENAME="Boomer's Adventure in ASMIK World (USA).gb"
set SCRIPTNAME="boomersadventureinasmikworldgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
