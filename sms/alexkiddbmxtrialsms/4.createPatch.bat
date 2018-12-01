@echo off
set T_FILENAME="TR_Alex Kidd - BMX Trial (J) [!].sms"
set S_FILENAME="Alex Kidd - BMX Trial (J) [!].sms"
set SCRIPTNAME="alexkiddbmxtrialsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
