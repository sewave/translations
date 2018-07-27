@echo off
set T_FILENAME="TR_Gain Ground (UE) [!].sms"
set S_FILENAME="Gain Ground (UE) [!].sms"
set SCRIPTNAME="gaingroundsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
