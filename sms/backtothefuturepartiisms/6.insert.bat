@echo off
set T_FILENAME="TR_Back to the Future Part II (UE) [!].sms"
set S_FILENAME="Back to the Future Part II (UE) [!].sms"
set SCRIPTNAME="backtothefuturepartiisms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
