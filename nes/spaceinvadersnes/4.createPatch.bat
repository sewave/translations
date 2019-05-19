@echo off
set T_FILENAME="TR_Space Invaders (J) [!].nes"
set S_FILENAME="Space Invaders (J) [!].nes"
set SCRIPTNAME="spaceinvadersnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
