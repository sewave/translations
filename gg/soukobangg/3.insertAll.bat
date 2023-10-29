@echo off
set T_FILENAME="TR_Soukoban (Japan).gg"
set S_FILENAME="Soukoban (Japan).gg"
set SCRIPTNAME="soukobangg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
