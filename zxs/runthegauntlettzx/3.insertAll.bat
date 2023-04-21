@echo off
set T_FILENAME="TR_Run The Gauntlet.tzx"
set S_FILENAME="Run The Gauntlet.tzx"
set SCRIPTNAME="runthegauntlettzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
