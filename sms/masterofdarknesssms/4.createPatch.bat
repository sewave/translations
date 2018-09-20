@echo off
set T_FILENAME="TR_Master of Darkness (UE) [!].sms"
set S_FILENAME="Master of Darkness (UE) [!].sms"
set SCRIPTNAME="masterofdarknesssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
