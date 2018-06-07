@echo off
set T_FILENAME="TR_Aztec Adventure - The Golden Road to Paradise (UE) [!].sms"
set S_FILENAME="Aztec Adventure - The Golden Road to Paradise (UE) [!].sms"
set SCRIPTNAME="aztecadventurethegoldenroadtoparadisesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
