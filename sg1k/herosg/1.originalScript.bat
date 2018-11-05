@echo off
set T_FILENAME="H.E.R.O. (SG-1000).sg"
set SCRIPTNAME="herosg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
