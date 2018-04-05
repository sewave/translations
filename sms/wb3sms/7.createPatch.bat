@echo off
set T_FILENAME="Wonder Boy III - The Dragon's Trap (UE) [T+ESP].sms"
set S_FILENAME="Wonder Boy III - The Dragon's Trap (UE) [!].sms"
set SCRIPTNAME="wb3sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
