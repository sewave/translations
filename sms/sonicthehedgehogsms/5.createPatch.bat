@echo off
set T_FILENAME="TR_Sonic The Hedgehog (UE) [!].sms"
set S_FILENAME="Sonic The Hedgehog (UE) [!].sms"
set SCRIPTNAME="sonicthehedgehogsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
