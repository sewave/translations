@echo off
set T_FILENAME="TR_Rescue Mission (UE) [!].sms"
set S_FILENAME="Rescue Mission (UE) [!].sms"
set SCRIPTNAME="rescuemissionsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
