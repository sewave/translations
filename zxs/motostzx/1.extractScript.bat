@echo off
set T_FILENAME="Motos.tzx"
set SCRIPTNAME="motostzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
