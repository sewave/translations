@echo off
set T_FILENAME="NBA Jam (U) [!].gb"
set SCRIPTNAME="nbajamgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
