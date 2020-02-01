@echo off
set T_FILENAME="Banana (Japan).nes"
set SCRIPTNAME="banananes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
