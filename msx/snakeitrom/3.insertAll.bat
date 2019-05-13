@echo off
set T_FILENAME="TR_Snake-It (1986) (Hal) (J).rom"
set S_FILENAME="Snake-It (1986) (Hal) (J).rom"
set SCRIPTNAME="snakeitrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
