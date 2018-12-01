@echo off
set T_FILENAME="TR_Alex Kidd - The Lost Stars (UE) [!].sms"
set S_FILENAME="Alex Kidd - The Lost Stars (UE) [!].sms"
set SCRIPTNAME="alexkiddtheloststarssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
