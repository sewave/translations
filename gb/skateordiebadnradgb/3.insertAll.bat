@echo off
set T_FILENAME="TR_Skate or Die - Bad 'N Rad (USA).gb"
set S_FILENAME="Skate or Die - Bad 'N Rad (USA).gb"
set SCRIPTNAME="skateordiebadnradgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
