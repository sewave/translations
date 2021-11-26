@echo off
set T_FILENAME="TR_Double Dungeons - W (USA).pce"
set S_FILENAME="Double Dungeons - W (USA).pce"
set SCRIPTNAME="doubledungeonspce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
