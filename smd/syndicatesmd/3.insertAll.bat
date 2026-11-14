@echo off
set T_FILENAME="TR_Syndicate (USA, Europe) (En,Fr,De).md"
set S_FILENAME="Syndicate (USA, Europe) (En,Fr,De).md"
set SCRIPTNAME="syndicatesmd"
del %T_FILENAME%
REM copy %S_FILENAME% %T_FILENAME%
python insert_all.py
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
