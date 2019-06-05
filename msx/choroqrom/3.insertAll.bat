@echo off
set T_FILENAME="TR_Choroq (1984) (Taito) (J).rom"
set S_FILENAME="Choroq (1984) (Taito) (J).rom"
set SCRIPTNAME="choroqrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
