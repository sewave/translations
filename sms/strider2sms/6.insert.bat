@echo off
set T_FILENAME="TR_Strider II (UE) [!].sms"
set S_FILENAME="Strider II (UE) [!].sms"
set SCRIPTNAME="strider2sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
