@echo off
set T_FILENAME="TR_Cloud Master (UE) [!].sms"
set S_FILENAME="Cloud Master (UE) [!].sms"
set SCRIPTNAME="cloudmastersms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
