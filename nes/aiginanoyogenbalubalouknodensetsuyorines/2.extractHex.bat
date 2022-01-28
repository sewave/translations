@echo off
set T_FILENAME="TR_Aigina no Yogen - Balubalouk no Densetsu Yori (Japan) [T+ENG].nes"
set SCRIPTNAME="aiginanoyogenbalubalouknodensetsuyorines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 93A0:60,7A40:30,1C10:100,3C10:100,5C10:20,5CA0:200,B910:600
pause
