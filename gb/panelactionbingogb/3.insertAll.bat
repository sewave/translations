@echo off
set T_FILENAME="TR_Panel Action Bingo (USA).gb"
set S_FILENAME="Panel Action Bingo (USA).gb"
set SCRIPTNAME="panelactionbingogb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
