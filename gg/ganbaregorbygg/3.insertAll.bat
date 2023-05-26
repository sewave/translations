@echo off
set T_FILENAME="TR_Ganbare Gorby! (Japan).gg"
set S_FILENAME="Ganbare Gorby! (Japan).gg"
set SCRIPTNAME="ganbaregorbygg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
