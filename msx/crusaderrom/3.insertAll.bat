@echo off
set T_FILENAME="TR_Crusader (Japan).rom"
set S_FILENAME="Crusader (Japan).rom"
set SCRIPTNAME="crusaderrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
