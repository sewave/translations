@echo off
set T_FILENAME="Cool Spot (U) [!].gen"
set SCRIPTNAME="coolspotsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
