@echo off
set T_FILENAME="Cool Ball (E) [!].gb"
set SCRIPTNAME="coolballgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
