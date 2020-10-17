@echo off
set T_FILENAME="TR_Gomola Speed (Japan).pce"
set S_FILENAME="Gomola Speed (Japan).pce"
set SCRIPTNAME="gomolaspeedpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
