@echo off
set T_FILENAME="Panel Action Bingo (USA).gb"
set SCRIPTNAME="panelactionbingogb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
