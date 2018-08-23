@echo off
set T_FILENAME="Double Dragon 3 (U) [!].gb"
set SCRIPTNAME="doubledragon3gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
