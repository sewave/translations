@echo off
set T_FILENAME="TR_Sega Chess (EB) [!].sms"
set S_FILENAME="Sega Chess (EB) [!].sms"
set SCRIPTNAME="segachesssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
