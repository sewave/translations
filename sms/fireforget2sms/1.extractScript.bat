@echo off
set T_FILENAME="Fire & Forget II (Europe).sms"
set SCRIPTNAME="fireforget2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
