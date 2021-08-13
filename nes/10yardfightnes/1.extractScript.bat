@echo off
set T_FILENAME="10-Yard Fight (USA, Europe).nes"
set SCRIPTNAME="10yardfightnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
