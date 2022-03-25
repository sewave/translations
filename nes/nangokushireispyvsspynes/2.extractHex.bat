@echo off
set T_FILENAME="TR_Nangoku Shirei!! - Spy vs Spy (Japan) [T+ENG].nes"
set SCRIPTNAME="nangokushireispyvsspynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5710:40,74D0:10,59D0:40,3610:C0,35F0:10
pause
