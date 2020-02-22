@echo off
set T_FILENAME="Metal Gear (USA).nes"
set SCRIPTNAME="metalgearnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
