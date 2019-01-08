@echo off
set T_FILENAME="TR_Marble Madness (UE) [!].sms"
set S_FILENAME="Marble Madness (UE) [!].sms"
set SCRIPTNAME="marblemadnesssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
