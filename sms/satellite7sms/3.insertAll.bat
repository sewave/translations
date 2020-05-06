@echo off
set T_FILENAME="TR_Satellite 7 (J) [!].sms"
set S_FILENAME="Satellite 7 (J) [!].sms"
set SCRIPTNAME="satellite7sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
