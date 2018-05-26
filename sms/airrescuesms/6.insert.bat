@echo off
set T_FILENAME="TR_Air Rescue (E) [!].sms"
set S_FILENAME="Air Rescue (E) [!].sms"
set SCRIPTNAME="airrescuesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
