@echo off
set T_FILENAME="TR_Penguin Land (UE) [!].sms"
set S_FILENAME="Penguin Land (UE) [!].sms"
set SCRIPTNAME="penguinlandsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
