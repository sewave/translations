@echo off
set T_FILENAME="TR_Megumi Rescue (J) [!].sms"
set S_FILENAME="Megumi Rescue (J) [!].sms"
set SCRIPTNAME="megumirescuesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
