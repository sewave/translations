@echo off 
set T_FILENAME="TR_Populous (E) [!].sms"
set S_FILENAME="Populous (E) [!].sms"
set SCRIPTNAME="populoussms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
