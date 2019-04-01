@echo off
set T_FILENAME="TR_Ice Hockey (U) [!].nes"
set S_FILENAME="Ice Hockey (U) [!].nes"
set SCRIPTNAME="icehockeynes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
