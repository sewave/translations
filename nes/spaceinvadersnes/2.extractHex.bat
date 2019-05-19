@echo off
set T_FILENAME="TR_Space Invaders (J) [!].nes"
set SCRIPTNAME="spaceinvadersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5350:80,4350:80,4E10:50,5E10:50
pause
