@echo off
set T_FILENAME="Ninja Crusaders (USA).nes"
set SCRIPTNAME="ninjacrusadersnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
