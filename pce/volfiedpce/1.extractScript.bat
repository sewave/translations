@echo off
set T_FILENAME="Volfied (Japan).pce"
set SCRIPTNAME="volfiedpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
