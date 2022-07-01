@echo off
set T_FILENAME="Skatin' USA.tzx"
set SCRIPTNAME="skatinusatzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
