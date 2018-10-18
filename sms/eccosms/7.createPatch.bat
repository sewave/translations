@echo off
set T_FILENAME="TR_Ecco the Dolphin (UE).sms"
set S_FILENAME="Ecco the Dolphin (UE).sms"
set SCRIPTNAME="eccosms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
