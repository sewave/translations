@echo off
set T_FILENAME="Hudson's Adventure Island (USA).nes"
set SCRIPTNAME="hudsonsadventureislandnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
