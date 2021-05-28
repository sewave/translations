@echo off
set T_FILENAME="TR_Fighting Road (Japan) [T+ENG].nes"
set SCRIPTNAME="fightingroadnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3CD10:80,3F710:60,3F7C0:10,3F240:90,3F640:80,3EF80:80,37C10:380
pause
