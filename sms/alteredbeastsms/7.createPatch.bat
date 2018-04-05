@echo off
set T_FILENAME="TR_Altered Beast (UE) [!].sms"
set S_FILENAME="Altered Beast (UE) [!].sms"
set SCRIPTNAME="alteredbeastsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
