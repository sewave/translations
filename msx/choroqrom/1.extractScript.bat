@echo off
set T_FILENAME="Choroq (1984) (Taito) (J).rom"
set SCRIPTNAME="choroqrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
