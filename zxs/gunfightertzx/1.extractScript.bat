@echo off
set T_FILENAME="Gunfighter.tzx"
set SCRIPTNAME="gunfightertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
