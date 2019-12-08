@echo off
set T_FILENAME="TR_Super Runner (1987) (Pony Cannon) (J).rom"
set S_FILENAME="Super Runner (1987) (Pony Cannon) (J).rom"
set SCRIPTNAME="superrunnerrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
