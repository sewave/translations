@echo off
set T_FILENAME="TR_C-So! (1985)(Pony Canyon).rom"
set S_FILENAME="C-So! (1985)(Pony Canyon).rom"
set SCRIPTNAME="csorom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
