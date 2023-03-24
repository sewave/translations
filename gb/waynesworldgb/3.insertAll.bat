@echo off
set T_FILENAME="TR_Wayne's World (USA).gb"
set S_FILENAME="Wayne's World (USA).gb"
set SCRIPTNAME="waynesworldgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
