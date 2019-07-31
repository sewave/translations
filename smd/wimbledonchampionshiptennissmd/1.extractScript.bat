@echo off
set T_FILENAME="Wimbledon Championship Tennis (USA).md"
set SCRIPTNAME="wimbledonchampionshiptennissmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
