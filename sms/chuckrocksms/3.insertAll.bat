@echo off
set T_FILENAME="TR_Chuck Rock (E) [!].sms"
set S_FILENAME="Chuck Rock (E) [!].sms"
set SCRIPTNAME="chuckrocksms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
