@echo off
set T_FILENAME="Cliffhanger (U) [c][!].gen"
set SCRIPTNAME="cliffhangersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
