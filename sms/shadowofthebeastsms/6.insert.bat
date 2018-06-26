@echo off
set T_FILENAME="TR_Shadow of the Beast (E) [!].sms"
set S_FILENAME="Shadow of the Beast (E) [!].sms"
set SCRIPTNAME="shadowofthebeastsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
