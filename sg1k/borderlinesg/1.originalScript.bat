@echo off
set T_FILENAME="Borderline (SG-1000).sg"
set SCRIPTNAME="borderlinesg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
