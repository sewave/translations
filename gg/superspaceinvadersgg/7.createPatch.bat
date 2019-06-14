@echo off
set T_FILENAME="TR_Super Space Invaders (U) [!].gg"
set S_FILENAME="Super Space Invaders (U) [!].gg"
set SCRIPTNAME="superspaceinvadersgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
