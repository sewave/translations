@echo off
set T_FILENAME="TR_Dead Moon (U).pce"
set S_FILENAME="Dead Moon (U).pce"
set SCRIPTNAME="deadmoonpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
