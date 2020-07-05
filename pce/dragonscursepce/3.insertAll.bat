@echo off
set T_FILENAME="TR_Dragon's Curse (U).pce"
set S_FILENAME="Dragon's Curse (U).pce"
set SCRIPTNAME="dragonscursepce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
