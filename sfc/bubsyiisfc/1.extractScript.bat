@echo off
set T_FILENAME="Bubsy II (USA).sfc"
set SCRIPTNAME="bubsyiisfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
