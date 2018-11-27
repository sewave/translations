@echo off
set T_FILENAME="TR_Teddy Boy (UE) [!].sms"
set S_FILENAME="Teddy Boy (UE) [!].sms"
set SCRIPTNAME="teddyboysms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
