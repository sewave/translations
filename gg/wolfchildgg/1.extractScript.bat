@echo off
set T_FILENAME="Wolfchild (U) [!].gg"
set SCRIPTNAME="wolfchildgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
