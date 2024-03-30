@echo off
set T_FILENAME="Pendragon.tzx"
set SCRIPTNAME="pendragontzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
