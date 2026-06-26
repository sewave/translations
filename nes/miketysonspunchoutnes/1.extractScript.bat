@echo off
set T_FILENAME="Mike Tyson's Punch-Out!! (Japan, USA) (En) (Rev 1).nes"
set SCRIPTNAME="miketysonspunchoutnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
