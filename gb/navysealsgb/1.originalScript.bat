@echo off
set T_FILENAME="Navy Seals (U) [!].gb"
set SCRIPTNAME="navysealsgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
