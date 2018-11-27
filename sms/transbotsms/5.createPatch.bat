@echo off
set T_FILENAME="TR_Trans-Bot (UE) [!].sms"
set S_FILENAME="Trans-Bot (UE) [!].sms"
set SCRIPTNAME="transbotsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
