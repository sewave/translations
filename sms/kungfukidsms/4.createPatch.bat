@echo off
set T_FILENAME="TR_Kung Fu Kid (UE) [!].sms"
set S_FILENAME="Kung Fu Kid (UE) [!].sms"
set SCRIPTNAME="kungfukidsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
