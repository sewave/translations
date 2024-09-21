@echo off
set T_FILENAME="FrankNStein.tzx"
set SCRIPTNAME="franknsteintzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
