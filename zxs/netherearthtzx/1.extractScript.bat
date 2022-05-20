@echo off
set T_FILENAME="Nether Earth.tzx"
set SCRIPTNAME="netherearthtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
