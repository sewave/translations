@echo off
set T_FILENAME="TR_Boxxle 2 (U) [!].gb"
set S_FILENAME="Boxxle 2 (U) [!].gb"
set SCRIPTNAME="boxxle2gb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
