@echo off
set T_FILENAME="Aerostar (USA, Europe).gb"
set SCRIPTNAME="aerostargb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
