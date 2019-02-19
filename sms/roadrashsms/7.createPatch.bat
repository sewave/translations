@echo off
set T_FILENAME="TR_Road Rash (E) [!].sms"
set S_FILENAME="Road Rash (E) [!].sms"
set SCRIPTNAME="roadrashsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
