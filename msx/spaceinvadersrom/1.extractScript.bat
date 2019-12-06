@echo off
set T_FILENAME="Space Invaders (1985)(Taito).rom"
set SCRIPTNAME="spaceinvadersrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
