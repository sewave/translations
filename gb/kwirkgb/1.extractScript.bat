@echo off
set T_FILENAME="Kwirk (UE) [!].gb"
set SCRIPTNAME="kwirkgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
