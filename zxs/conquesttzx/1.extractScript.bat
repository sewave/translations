@echo off
set T_FILENAME="Con-Quest.tzx"
set SCRIPTNAME="conquesttzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
