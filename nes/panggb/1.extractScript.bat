@echo off
set T_FILENAME="Pang (Europe).gb"
set SCRIPTNAME="panggb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
