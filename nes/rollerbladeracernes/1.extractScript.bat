@echo off
set T_FILENAME="Rollerblade Racer (USA).nes"
set SCRIPTNAME="rollerbladeracernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
