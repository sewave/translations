@echo off
set T_FILENAME="Thunder & Lightning (USA).nes"
set SCRIPTNAME="thunderlightningnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
