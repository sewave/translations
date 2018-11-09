@echo off
set T_FILENAME="Chuck Rock (U) [!].gb"
set SCRIPTNAME="chuckrockgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
