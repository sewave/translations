@echo off
set T_FILENAME="Blues Brothers, The (U) [!].gb"
set SCRIPTNAME="bluesbrothersthegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
