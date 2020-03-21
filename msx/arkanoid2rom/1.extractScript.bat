@echo off
set T_FILENAME="Arkanoid 2 (1987) (Taito) (J).rom"
set SCRIPTNAME="arkanoid2rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
