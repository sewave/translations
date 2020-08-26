@echo off
set T_FILENAME="TR_X-Men - Wolverine's Rage (USA).gbc"
set S_FILENAME="X-Men - Wolverine's Rage (USA).gbc"
set SCRIPTNAME="xmenwolverinesragegbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
