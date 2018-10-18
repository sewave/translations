@echo off
set T_FILENAME="TR_Psycho Fox (UE) [!].sms"
set S_FILENAME="Psycho Fox (UE) [!].sms"
set SCRIPTNAME="psychofoxsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
