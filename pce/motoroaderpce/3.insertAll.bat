@echo off
set T_FILENAME="TR_Moto Roader (U).pce"
set S_FILENAME="Moto Roader (U).pce"
set SCRIPTNAME="motoroaderpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
