@echo off
set T_FILENAME="TR_Fray - Shugyou Hen (Japan) [T+ENG].gg"
set SCRIPTNAME="frayshugyouhengg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 33009:100,32F49:20,33B69:20
pause
