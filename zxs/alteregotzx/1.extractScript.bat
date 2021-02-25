@echo off
set T_FILENAME="Alter Ego.tzx"
set SCRIPTNAME="alteregotzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
