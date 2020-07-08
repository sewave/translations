@echo off
set T_FILENAME="Super R.C. Pro-Am (USA, Europe).gb"
set SCRIPTNAME="superrcproamgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
