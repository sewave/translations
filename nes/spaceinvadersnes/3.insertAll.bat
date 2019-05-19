@echo off
set T_FILENAME="TR_Space Invaders (J) [!].nes"
set S_FILENAME="Space Invaders (J) [!].nes"
set SCRIPTNAME="spaceinvadersnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
