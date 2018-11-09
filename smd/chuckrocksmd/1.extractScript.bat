@echo off
set T_FILENAME="Chuck Rock (U) [c][!].gen"
set SCRIPTNAME="chuckrocksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
