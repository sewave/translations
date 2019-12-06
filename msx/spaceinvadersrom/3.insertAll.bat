@echo off
set T_FILENAME="TR_Space Invaders (1985)(Taito).rom"
set S_FILENAME="Space Invaders (1985)(Taito).rom"
set SCRIPTNAME="spaceinvadersrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
