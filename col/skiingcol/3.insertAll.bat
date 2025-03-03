@echo off
set T_FILENAME="TR_Skiing (USA).col"
set S_FILENAME="Skiing (USA).col"
set SCRIPTNAME="skiingcol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
