@echo off
set T_FILENAME="TR_Galaga - Demons of Death (U) [!].nes"
set S_FILENAME="Galaga - Demons of Death (U) [!].nes"
set SCRIPTNAME="galagademonsofdeathnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
