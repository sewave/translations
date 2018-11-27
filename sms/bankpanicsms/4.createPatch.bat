@echo off
set T_FILENAME="TR_Bank Panic (Europe).sms"
set S_FILENAME="Bank Panic (Europe).sms"
set SCRIPTNAME="bankpanicsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
