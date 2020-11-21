@echo off
set T_FILENAME="Porter (Asia) (En) (Unl).nes"
set SCRIPTNAME="porternes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
