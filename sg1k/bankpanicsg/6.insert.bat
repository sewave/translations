@echo off
set T_FILENAME="TR_Bank Panic (SG-1000) [!].sg"
set S_FILENAME="Bank Panic (SG-1000) [!].sg"
set SCRIPTNAME="bankpanicsg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
