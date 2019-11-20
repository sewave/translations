@echo off
set T_FILENAME="Arkanoid 1 (1986) (Taito) (J).rom"
set SCRIPTNAME="arkanoid1rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
