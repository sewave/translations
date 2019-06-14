@echo off
set T_FILENAME="TR_Super Space Invaders (U) [!].gg"
set SCRIPTNAME="superspaceinvadersgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
