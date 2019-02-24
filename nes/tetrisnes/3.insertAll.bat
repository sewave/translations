@echo off
set T_FILENAME="TR_Tetris (U) [!].nes"
set S_FILENAME="Tetris (U) [!].nes"
set SCRIPTNAME="tetrisnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
