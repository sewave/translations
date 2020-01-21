@echo off
set T_FILENAME="TR_Warp Warp (1984) (Namcot) (J).rom"
set S_FILENAME="Warp Warp (1984) (Namcot) (J).rom"
set SCRIPTNAME="warpwarprom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
