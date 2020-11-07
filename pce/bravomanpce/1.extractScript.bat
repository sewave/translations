@echo off
set T_FILENAME="Bravoman (USA).pce"
set SCRIPTNAME="bravomanpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
