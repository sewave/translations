@echo off
set T_FILENAME="TR_Armed F (Japan).pce"
set S_FILENAME="Armed F (Japan).pce"
set SCRIPTNAME="armedfpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
