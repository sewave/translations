@echo off
set T_FILENAME="TR_Wonder Boy (UE) [!].sms"
set S_FILENAME="Wonder Boy (UE) [!].sms"
set SCRIPTNAME="wonderboysms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
