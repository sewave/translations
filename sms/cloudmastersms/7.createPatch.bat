@echo off
set T_FILENAME="TR_Cloud Master (UE) [!].sms"
set S_FILENAME="Cloud Master (UE) [!].sms"
set SCRIPTNAME="cloudmastersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
