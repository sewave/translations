@echo off
set T_FILENAME="Lot Lot (Japan).nes"
set SCRIPTNAME="lotlotnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
