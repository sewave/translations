@echo off
set T_FILENAME="TR_Champion Boxing (1985) (Pony Cannon) (J).rom"
set S_FILENAME="Champion Boxing (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="championboxingrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
