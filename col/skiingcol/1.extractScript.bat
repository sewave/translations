@echo off
set T_FILENAME="Skiing (USA).col"
set SCRIPTNAME="skiingcol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
