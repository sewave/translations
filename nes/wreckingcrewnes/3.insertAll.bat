@echo off
set T_FILENAME="TR_Wrecking Crew (W) [!].nes"
set S_FILENAME="Wrecking Crew (W) [!].nes"
set SCRIPTNAME="wreckingcrewnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
