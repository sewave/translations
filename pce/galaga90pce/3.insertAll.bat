@echo off
set T_FILENAME="TR_Galaga '90 (U).pce"
set S_FILENAME="Galaga '90 (U).pce"
set SCRIPTNAME="galaga90pce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
