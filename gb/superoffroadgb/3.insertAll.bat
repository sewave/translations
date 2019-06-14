@echo off
set T_FILENAME="TR_Super Off Road (U) [!].gb"
set S_FILENAME="Super Off Road (U) [!].gb"
set SCRIPTNAME="superoffroadgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
