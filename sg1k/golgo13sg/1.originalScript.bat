@echo off
set T_FILENAME="Golgo 13 (SG-1000).sg"
set SCRIPTNAME="golgo13sg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
