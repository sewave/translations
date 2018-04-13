@echo off
set T_FILENAME="Superman (U) [!].gg"
set SCRIPTNAME="supermangg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
