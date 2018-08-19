@echo off
set T_FILENAME="TR_Quartet (UE) [!].sms"
set S_FILENAME="Quartet (UE) [!].sms"
set SCRIPTNAME="quartetsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
