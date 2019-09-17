@echo off
set T_FILENAME="Drol (SG-1000).sg"
set SCRIPTNAME="drolsg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
