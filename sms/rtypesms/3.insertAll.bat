@echo off
set T_FILENAME="TR_R-Type (UE) [!].sms"
set S_FILENAME="R-Type (UE) [!].sms"
set SCRIPTNAME="rtypesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
