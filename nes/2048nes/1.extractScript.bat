@echo off
set T_FILENAME="2048.nes"
set SCRIPTNAME="2048nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
