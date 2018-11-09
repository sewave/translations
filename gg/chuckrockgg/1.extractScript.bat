@echo off
set T_FILENAME="Chuck Rock (U) [!].gg"
set SCRIPTNAME="chuckrockgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
