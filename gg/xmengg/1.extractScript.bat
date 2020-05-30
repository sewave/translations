@echo off
set T_FILENAME="X-Men (U) [!].gg"
set SCRIPTNAME="xmengg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
