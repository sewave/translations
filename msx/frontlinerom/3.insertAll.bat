@echo off
set T_FILENAME="TR_Front Line (1984) (Taito) (J).rom"
set S_FILENAME="Front Line (1984) (Taito) (J).rom"
set SCRIPTNAME="frontlinerom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
