@echo off
set T_FILENAME="McDonaldland (U) [!].gb"
set SCRIPTNAME="mcdonaldlandgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
