@echo off
set T_FILENAME="TR_Global Defense (UE) [!].sms"
set S_FILENAME="Global Defense (UE) [!].sms"
set SCRIPTNAME="globaldefensesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% 93B4.dat 93B4
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
