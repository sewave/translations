@echo off
set T_FILENAME="TR_Vampire - Master of Darkness (U) [!].gg"
set S_FILENAME="Vampire - Master of Darkness (U) [!].gg"
set SCRIPTNAME="vampiremasterofdarknessgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
