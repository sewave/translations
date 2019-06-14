@echo off
set T_FILENAME="Super Space Invaders (U) [!].gg"
set SCRIPTNAME="superspaceinvadersgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
