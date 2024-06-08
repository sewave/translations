@echo off
set T_FILENAME="Hypa Raid.tzx"
set SCRIPTNAME="hyparaidtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
