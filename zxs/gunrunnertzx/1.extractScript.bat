@echo off
set T_FILENAME="Gunrunner.tzx"
set SCRIPTNAME="gunrunnertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
