@echo off
set T_FILENAME="TR_Captain America and the Avengers (U) [!].gb"
set S_FILENAME="Captain America and the Avengers (U) [!].gb"
set SCRIPTNAME="captainamericaandtheavengersgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
