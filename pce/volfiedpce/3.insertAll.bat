@echo off
set T_FILENAME="TR_Volfied (Japan).pce"
set S_FILENAME="Volfied (Japan).pce"
set SCRIPTNAME="volfiedpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
