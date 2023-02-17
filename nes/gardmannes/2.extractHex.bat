@echo off
set T_FILENAME="TR_Gardman (Asia) (Unl) [T+ENG].nes"
set SCRIPTNAME="gardmannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 45150:10,40F30:50,42E50:50,43D20:50,44F80:50,46980:30,48710:80,61610:100,63610:100,65610:100,67610:100,
pause
