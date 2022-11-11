@echo off
set T_FILENAME="Omega 1.tzx"
set SCRIPTNAME="omega1tzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
