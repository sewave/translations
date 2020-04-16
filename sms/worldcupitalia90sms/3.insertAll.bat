@echo off
set T_FILENAME="TR_World Cup Italia '90 (EB) [!].sms"
set S_FILENAME="World Cup Italia '90 (EB) [!].sms"
set SCRIPTNAME="worldcupitalia90sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
