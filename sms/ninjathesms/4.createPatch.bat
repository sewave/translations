@echo off
set T_FILENAME="TR_Ninja, The (UE) [!].sms"
set S_FILENAME="Ninja, The (UE) [!].sms"
set SCRIPTNAME="ninjathesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
