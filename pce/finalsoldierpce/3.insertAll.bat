@echo off
set T_FILENAME="TR_Final Soldier (J).pce"
set S_FILENAME="Final Soldier (J).pce"
set SCRIPTNAME="finalsoldierpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
