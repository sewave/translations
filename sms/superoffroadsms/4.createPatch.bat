@echo off
set T_FILENAME="TR_Super Off-Road (E) [!].sms"
set S_FILENAME="Super Off-Road (E) [!].sms"
set SCRIPTNAME="superoffroadsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
