@echo off
set T_FILENAME="Gradius (1986) (Konami) (J).rom"
set SCRIPTNAME="gradiusrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
