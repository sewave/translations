@echo off
set T_FILENAME="TR_Bugs Bunny (U) [!].gb"
set S_FILENAME="Bugs Bunny (U) [!].gb"
set SCRIPTNAME="bugsbunnygb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
