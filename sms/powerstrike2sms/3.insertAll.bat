@echo off
set T_FILENAME="TR_Power Strike 2 (E) [!].sms"
set S_FILENAME="Power Strike 2 (E) [!].sms"
set SCRIPTNAME="powerstrike2sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
