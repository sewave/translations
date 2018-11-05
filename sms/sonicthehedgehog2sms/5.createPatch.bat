@echo off
set T_FILENAME="TR_Sonic The Hedgehog 2 (UE) (V2.2).sms"
set S_FILENAME="Sonic The Hedgehog 2 (UE) (V2.2).sms"
set SCRIPTNAME="sonicthehedgehog2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
