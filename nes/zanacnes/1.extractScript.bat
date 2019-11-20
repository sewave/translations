@echo off
set T_FILENAME="Zanac (U) [!].nes"
set SCRIPTNAME="zanacnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
