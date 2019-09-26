@echo off
set T_FILENAME="Shanghai (U) [!].gb"
set SCRIPTNAME="shanghaigb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
