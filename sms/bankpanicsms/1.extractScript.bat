@echo off
set T_FILENAME="Bank Panic (Europe).sms"
set SCRIPTNAME="bankpanicsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
