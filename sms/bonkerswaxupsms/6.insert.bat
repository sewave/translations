@echo off
set T_FILENAME="TR_Bonkers Wax Up! (UE) [!].sms"
set S_FILENAME="Bonkers Wax Up! (UE) [!].sms"
set SCRIPTNAME="bonkerswaxupsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
