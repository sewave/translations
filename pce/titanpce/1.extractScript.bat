@echo off
set T_FILENAME="Titan (Japan).pce"
set SCRIPTNAME="titanpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
