@echo off
set T_FILENAME="F1 Championship (EB) [!].sms"
set SCRIPTNAME="f1championshipsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
