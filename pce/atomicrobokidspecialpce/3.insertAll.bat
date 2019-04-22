@echo off
set T_FILENAME="TR_Atomic Robo-Kid Special (Japan).pce"
set S_FILENAME="Atomic Robo-Kid Special (Japan).pce"
set SCRIPTNAME="atomicrobokidspecialpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
