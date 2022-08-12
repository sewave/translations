@echo off
set T_FILENAME="Devil's Crown.tzx"
set SCRIPTNAME="devilscrowntzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
