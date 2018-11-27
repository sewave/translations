@echo off
set T_FILENAME="TR_Submarine Attack (UE) [!].sms"
set S_FILENAME="Submarine Attack (UE) [!].sms"
set SCRIPTNAME="submarineattacksms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
