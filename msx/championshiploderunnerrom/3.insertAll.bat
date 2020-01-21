@echo off
set T_FILENAME="TR_Championship Lode Runner (1985) (Sony) (J).rom"
set S_FILENAME="Championship Lode Runner (1985) (Sony) (J).rom"
set SCRIPTNAME="championshiploderunnerrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
