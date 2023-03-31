@echo off
set T_FILENAME="Voidrunner.tzx"
set SCRIPTNAME="voidrunnertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
