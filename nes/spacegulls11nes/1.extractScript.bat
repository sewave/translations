@echo off
set T_FILENAME="Spacegulls-1.1.nes"
set SCRIPTNAME="spacegulls11nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
