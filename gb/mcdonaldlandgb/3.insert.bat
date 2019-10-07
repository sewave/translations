@echo off
set T_FILENAME="TR_McDonaldland (U) [!].gb"
set S_FILENAME="McDonaldland (U) [!].gb"
set SCRIPTNAME="mcdonaldlandgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
