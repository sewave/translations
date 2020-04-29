@echo off
set T_FILENAME="Cyraid (U) [!].gb"
set SCRIPTNAME="cyraidgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
