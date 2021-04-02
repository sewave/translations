@echo off
set T_FILENAME="TR_King Kong 2 - Ikari no Megaton Punch (Japan) [T+ENG].nes"
set SCRIPTNAME="kingkong2ikarinomegatonpunchnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3B370:10,3BC10:10,3BD10:10,20960:10,21960:10,22960:10,23960:10,24960:10,25960:10,26960:10,27960:10,28960:10,29960:10,2A960:10,2B960:10,2C960:10,3CF50:10,3DF50:10
pause
