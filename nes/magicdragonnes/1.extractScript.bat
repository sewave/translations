@echo off
set T_FILENAME="Magic Dragon (Unl).nes"
set SCRIPTNAME="magicdragonnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
