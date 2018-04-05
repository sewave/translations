@echo off
set T_FILENAME="TR_Captain America and the Avengers (U) [!].gg"
set S_FILENAME="Captain America and the Avengers (U) [!].gg"
set SCRIPTNAME="captainamericaandtheavengersgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
