@echo off
set T_FILENAME="Fire & Forget 2 (E) [!].sms"
set SCRIPTNAME="fireforget2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
