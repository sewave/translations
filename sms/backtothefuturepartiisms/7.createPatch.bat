@echo off
set T_FILENAME="TR_Back to the Future Part II (UE) [!].sms"
set S_FILENAME="Back to the Future Part II (UE) [!].sms"
set SCRIPTNAME="backtothefuturepartiisms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
