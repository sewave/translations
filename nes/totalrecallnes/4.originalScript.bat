@echo off
set T_FILENAME="Total Recall (U) [!].nes"
set SCRIPTNAME="totalrecallnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
