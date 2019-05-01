@echo off
set T_FILENAME="TR_R-Type (U).pce"
set S_FILENAME="R-Type (U).pce"
set SCRIPTNAME="rtypepce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
