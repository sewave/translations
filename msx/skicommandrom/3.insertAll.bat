@echo off
set T_FILENAME="TR_Ski Command (1984)(Casio).rom"
set S_FILENAME="Ski Command (1984)(Casio).rom"
set SCRIPTNAME="skicommandrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
