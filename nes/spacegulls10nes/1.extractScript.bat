@echo off
set T_FILENAME="Spacegulls-1.0.nes"
set SCRIPTNAME="spacegulls10nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
