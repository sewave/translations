@echo off
set T_FILENAME="Probotector (Europe).gb"
set SCRIPTNAME="probotectorgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
