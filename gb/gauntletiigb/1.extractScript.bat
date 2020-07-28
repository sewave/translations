@echo off
set T_FILENAME="Gauntlet II (USA, Europe).gb"
set SCRIPTNAME="gauntletiigb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
