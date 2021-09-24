@echo off
set T_FILENAME="Battle Cars (USA).sfc"
set SCRIPTNAME="battlecarssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
