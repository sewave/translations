@echo off
set T_FILENAME="TR_Bank Panic (Europe).sms"
set SCRIPTNAME="bankpanicsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
