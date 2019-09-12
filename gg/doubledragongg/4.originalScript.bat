@echo off
set T_FILENAME="Double Dragon (U) [!].gg"
set SCRIPTNAME="doubledragongg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
