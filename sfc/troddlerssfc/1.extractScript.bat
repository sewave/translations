@echo off
set T_FILENAME="Troddlers (USA).sfc"
set SCRIPTNAME="troddlerssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
