@echo off
set T_FILENAME="TR_Dinobasher - Starring Bignose the Caveman [Proto].gg"
set S_FILENAME="Dinobasher - Starring Bignose the Caveman [Proto].gg"
set SCRIPTNAME="dinobasherstarringbignosethecavemangg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
