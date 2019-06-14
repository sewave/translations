@echo off
set T_FILENAME="TR_Super Space Invaders (U) [!].gg"
set S_FILENAME="Super Space Invaders (U) [!].gg"
set SCRIPTNAME="superspaceinvadersgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
