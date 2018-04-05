@echo off 
set T_FILENAME="TR_Robocop 3 (E) [!].sms"
set S_FILENAME="Robocop 3 (E) [!].sms"
set SCRIPTNAME="robocop3sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
