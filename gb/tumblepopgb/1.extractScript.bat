@echo off
set T_FILENAME="Tumble Pop (U) [!].gb"
set SCRIPTNAME="tumblepopgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
