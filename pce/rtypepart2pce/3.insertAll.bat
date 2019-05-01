@echo off
set T_FILENAME="TR_R-Type Part-2 (Japan).pce"
set S_FILENAME="R-Type Part-2 (Japan).pce"
set SCRIPTNAME="rtypepart2pce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
