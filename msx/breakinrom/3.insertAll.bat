@echo off
set T_FILENAME="TR_Break In (1987) (Jaleco) (J).rom"
set S_FILENAME="Break In (1987) (Jaleco) (J).rom"
set SCRIPTNAME="breakinrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
