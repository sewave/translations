@echo off
set T_FILENAME="Karateka (Japan).nes"
set SCRIPTNAME="karatekanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
