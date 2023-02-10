@echo off
set T_FILENAME="Nonterraqueous.tzx"
set SCRIPTNAME="nonterraqueoustzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
