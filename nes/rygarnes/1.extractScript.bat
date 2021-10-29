@echo off
set T_FILENAME="Rygar (USA) (Rev A).nes"
set SCRIPTNAME="rygarnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
