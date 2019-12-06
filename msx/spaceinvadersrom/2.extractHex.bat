@echo off
set T_FILENAME="TR_Space Invaders (1985)(Taito).rom"
set SCRIPTNAME="spaceinvadersrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
