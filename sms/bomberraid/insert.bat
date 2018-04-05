@echo off 
set T_FILENAME="TR_Bomber Raid (UE) [!].sms"
set S_FILENAME="Bomber Raid (UE) [!].sms"
set SCRIPTNAME="bomberraid"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
