@echo off
set T_FILENAME="TR_Ninja Jajamaru - Ginga Daisakusen (Japan) [T+ENG].nes"
set SCRIPTNAME="ninjajajamarugingadaisakusennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 333D0:10,33510:70,3AC90:C0,3AFD0:20,3F9C0:30,35410:240,35710:40,35C10:240,35F10:40,2C010:80,2C210:80,35EB0:60,35FB0:60,33D70:A0,33E70:A0,33F70:A0,342D0:20,343D0:20,
pause
