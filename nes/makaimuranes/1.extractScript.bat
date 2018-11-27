@echo off
set T_FILENAME="Makaimura (J) [A].nes"
set SCRIPTNAME="makaimuranes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause
