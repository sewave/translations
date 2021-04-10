@echo off
set T_FILENAME="TR_Kishin Douji Zenki (Japan) [T+ENG].gg"
set SCRIPTNAME="kishindoujizenkigg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
