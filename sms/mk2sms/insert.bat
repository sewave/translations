@echo off 
set T_FILENAME="TR_Mortal Kombat 2 (E) [!].sms"
set S_FILENAME="Mortal Kombat 2 (E) [!].sms"
set SCRIPTNAME="mk2sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
