@echo off
set T_FILENAME="Jetpac (1983)(Ultimate).tzx"
set SCRIPTNAME="jetpactzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
