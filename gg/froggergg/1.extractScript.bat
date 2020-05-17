@echo off
set T_FILENAME="Frogger (Prototype) [!].gg"
set SCRIPTNAME="froggergg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
