@echo off
set T_FILENAME="TR_Terminator 2 - Judgment Day (UE) [!].gb"
set S_FILENAME="Terminator 2 - Judgment Day (UE) [!].gb"
set SCRIPTNAME="terminator2gb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
