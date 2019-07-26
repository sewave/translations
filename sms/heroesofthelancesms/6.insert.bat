@echo off
set T_FILENAME="TR_Heroes of the Lance (U) [!].sms"
set S_FILENAME="Heroes of the Lance (U) [!].sms"
set SCRIPTNAME="heroesofthelancesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
