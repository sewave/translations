@echo off
set T_FILENAME="TR_Zaxxon (1985) (Pony Cannon) (J).rom"
set S_FILENAME="Zaxxon (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="zaxxonrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
