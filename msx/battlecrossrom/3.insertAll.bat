@echo off
set T_FILENAME="TR_Battle Cross (1984) (Sony) (J).rom"
set S_FILENAME="Battle Cross (1984) (Sony) (J).rom"
set SCRIPTNAME="battlecrossrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
