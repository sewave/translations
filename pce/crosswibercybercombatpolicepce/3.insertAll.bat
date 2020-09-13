@echo off
set T_FILENAME="TR_Cross Wiber - Cyber Combat Police (Japan).pce"
set S_FILENAME="Cross Wiber - Cyber Combat Police (Japan).pce"
set SCRIPTNAME="crosswibercybercombatpolicepce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
