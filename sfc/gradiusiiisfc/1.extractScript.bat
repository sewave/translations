@echo off
set T_FILENAME="Gradius III (USA).sfc"
set SCRIPTNAME="gradiusiiisfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
