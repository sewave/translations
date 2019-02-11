@echo off
set T_FILENAME="TR_Micro Machines (Camerica) [!].nes"
set S_FILENAME="Micro Machines (Camerica) [!].nes"
set SCRIPTNAME="micromachinesnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
