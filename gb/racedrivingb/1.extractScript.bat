@echo off
set T_FILENAME="Race Drivin' (USA, Europe).gb"
set SCRIPTNAME="racedrivingb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
