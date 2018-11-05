@echo off
set T_FILENAME="TR_Sonic Chaos (E) [!].sms"
set S_FILENAME="Sonic Chaos (E) [!].sms"
set SCRIPTNAME="sonicchaossms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
