@echo off
set T_FILENAME="Zool (U) [!].gb"
set SCRIPTNAME="zoolgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
