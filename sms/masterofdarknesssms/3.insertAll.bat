@echo off
set T_FILENAME="TR_Master of Darkness (UE) [!].sms"
set S_FILENAME="Master of Darkness (UE) [!].sms"
set SCRIPTNAME="masterofdarknesssms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
