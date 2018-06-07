@echo off
set T_FILENAME="TR_Aztec Adventure - The Golden Road to Paradise (UE) [!].sms"
set SCRIPTNAME="aztecadventurethegoldenroadtoparadisesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 138DE-139DE
pause
