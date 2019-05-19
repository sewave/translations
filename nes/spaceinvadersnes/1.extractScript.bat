@echo off
set T_FILENAME="Space Invaders (J) [!].nes"
set SCRIPTNAME="spaceinvadersnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
