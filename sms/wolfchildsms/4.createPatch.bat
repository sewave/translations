@echo off
set T_FILENAME="TR_Wolf Child (UE) [!].sms"
set S_FILENAME="Wolf Child (UE) [!].sms"
set SCRIPTNAME="wolfchildsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
