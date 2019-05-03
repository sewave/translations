@echo off
set T_FILENAME="TR_Dragon Spirit (U).pce"
set S_FILENAME="Dragon Spirit (U).pce"
set SCRIPTNAME="dragonspiritpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
