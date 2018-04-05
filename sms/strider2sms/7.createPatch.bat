@echo off
set T_FILENAME="TR_Strider II (UE) [!].sms"
set S_FILENAME="Strider II (UE) [!].sms"
set SCRIPTNAME="strider2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
