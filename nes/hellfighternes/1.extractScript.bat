@echo off
set T_FILENAME="Hell Fighter (Asia) (PAL) (Unl).nes"
set SCRIPTNAME="hellfighternes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
