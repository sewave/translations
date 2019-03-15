@echo off
set T_FILENAME="TR_Chakan (U) [!].gg"
set S_FILENAME="Chakan (U) [!].gg"
set SCRIPTNAME="chakangg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
