@echo off
set T_FILENAME="TR_Ordyne (U).pce"
set S_FILENAME="Ordyne (U).pce"
set SCRIPTNAME="ordynepce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
