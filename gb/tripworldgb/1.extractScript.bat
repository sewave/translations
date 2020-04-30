@echo off
set T_FILENAME="Trip World (E) [!].gb"
set SCRIPTNAME="tripworldgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
