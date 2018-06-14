@echo off
set T_FILENAME="Flicky (SG-1000).sg"
set SCRIPTNAME="flickysg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
