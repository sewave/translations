@echo off 
set T_FILENAME="TR_Fantasy Zone II - The Tears of Opa-Opa (UE) [!].sms"
set S_FILENAME="Fantasy Zone II - The Tears of Opa-Opa (UE) [!].sms"
set SCRIPTNAME="fantasyzone2sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
