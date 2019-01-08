@echo off
set T_FILENAME="Castelian (U) [!].gb"
set SCRIPTNAME="casteliangb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
