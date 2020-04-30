@echo off
set T_FILENAME="Flipull (U) [!].gb"
set SCRIPTNAME="flipullgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
