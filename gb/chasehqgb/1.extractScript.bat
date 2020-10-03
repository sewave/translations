@echo off
set T_FILENAME="Chase H.Q. (USA, Europe).gb"
set SCRIPTNAME="chasehqgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
