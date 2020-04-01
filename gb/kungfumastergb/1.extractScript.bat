@echo off
set T_FILENAME="Kung-Fu Master (U).gb"
set SCRIPTNAME="kungfumastergb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
