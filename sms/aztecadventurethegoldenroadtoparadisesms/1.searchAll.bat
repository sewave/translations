@echo off
set T_FILENAME="Aztec Adventure - The Golden Road to Paradise (UE) [!].sms"
set SCRIPTNAME="aztecadventurethegoldenroadtoparadisesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
