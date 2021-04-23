@echo off
set T_FILENAME="TR_Spacegulls-1.0.nes"
set S_FILENAME="Spacegulls-1.0.nes"
set SCRIPTNAME="spacegulls10nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
