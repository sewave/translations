@echo off
set T_FILENAME="TR_Magical Chase (U) [!].pce"
set S_FILENAME="Magical Chase (U) [!].pce"
set SCRIPTNAME="magicalchasepce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
