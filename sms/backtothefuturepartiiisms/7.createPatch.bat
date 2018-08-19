@echo off
set T_FILENAME="TR_Back to the Future Part III (UE) [!].sms"
set S_FILENAME="Back to the Future Part III (UE) [!].sms"
set SCRIPTNAME="backtothefuturepartiiisms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
