@echo off
set T_FILENAME="Magmax (U) [!].nes"
set SCRIPTNAME="magmaxnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
