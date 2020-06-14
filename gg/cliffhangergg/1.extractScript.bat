@echo off
set T_FILENAME="Cliffhanger (U) [!].gg"
set SCRIPTNAME="cliffhangergg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
