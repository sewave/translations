@echo off
set T_FILENAME="TR_War Games (1983-84).col"
set S_FILENAME="War Games (1983-84).col"
set SCRIPTNAME="wargamescol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
