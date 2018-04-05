@echo off
set T_FILENAME="TR_Aero Blasters (U).pce"
set S_FILENAME="Aero Blasters (U).pce"
set SCRIPTNAME="aeroblasterspce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
