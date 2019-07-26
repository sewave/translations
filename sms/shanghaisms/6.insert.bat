@echo off
set T_FILENAME="TR_Shanghai (UE) [!].sms"
set S_FILENAME="Shanghai (UE) [!].sms"
set SCRIPTNAME="shanghaisms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
