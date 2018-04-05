@echo off 
set T_FILENAME="TR_R.C. Grand Prix (UE) [!].sms"
set S_FILENAME="R.C. Grand Prix (UE) [!].sms"
set SCRIPTNAME="rcgrandprix"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
