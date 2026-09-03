@echo off
set T_FILENAME="Into The Eagle's Nest.tzx"
set SCRIPTNAME="intotheeaglesnesttzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
