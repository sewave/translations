@echo off
set T_FILENAME="TR_Action Fighter (UE) [!].sms"
set S_FILENAME="Action Fighter (UE) [!].sms"
set SCRIPTNAME="actionfightersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
