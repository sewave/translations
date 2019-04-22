@echo off
set T_FILENAME="Air Fortress (U) [!].nes"
set SCRIPTNAME="airfortressnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
