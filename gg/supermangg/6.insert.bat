@echo off
set T_FILENAME="TR_Superman (U) [!].gg"
set S_FILENAME="Superman (U) [!].gg"
set SCRIPTNAME="supermangg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
