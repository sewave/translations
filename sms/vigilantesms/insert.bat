@echo off 
set T_FILENAME="TR_Vigilante (UE) [!].sms"
set S_FILENAME="Vigilante (UE) [!].sms"
set SCRIPTNAME="vigilantesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
