@echo off
set T_FILENAME="TR_Gradius (Japan).pce"
set S_FILENAME="Gradius (Japan).pce"
set SCRIPTNAME="gradiuspce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
