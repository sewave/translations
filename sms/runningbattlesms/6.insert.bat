@echo off
set T_FILENAME="TR_Running Battle (E) [!].sms"
set S_FILENAME="Running Battle (E) [!].sms"
set SCRIPTNAME="runningbattlesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
