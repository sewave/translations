@echo off
set T_FILENAME="TR_Killer Instinct (USA, Europe) (SGB Enhanced).gb"
set S_FILENAME="Killer Instinct (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="killerinstinctgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
