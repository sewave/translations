@echo off
set T_FILENAME="Zynaps.tzx"
set SCRIPTNAME="zynapstzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
