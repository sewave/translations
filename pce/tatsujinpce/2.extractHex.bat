@echo off
set T_FILENAME="TR_Tatsujin (Japan).pce"
set SCRIPTNAME="tatsujinpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17400:1400,14100:100,14340:C0,14700:100
pause
