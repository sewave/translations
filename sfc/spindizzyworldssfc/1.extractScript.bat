@echo off
set T_FILENAME="Spindizzy Worlds (USA).sfc"
set SCRIPTNAME="spindizzyworldssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
