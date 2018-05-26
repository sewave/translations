@echo off
set T_FILENAME="Bomb Jack (SG-1000).sg"
set SCRIPTNAME="bombjacksg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
