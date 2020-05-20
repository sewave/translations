@echo off
set T_FILENAME="TR_NBA Jam (U) (V1.1) [!].gg"
set S_FILENAME="NBA Jam (U) (V1.1) [!].gg"
set SCRIPTNAME="nbajamgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
