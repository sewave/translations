@echo off
set T_FILENAME="TR_Mitsume ga Tooru (Japan) [T+ENG].nes"
set SCRIPTNAME="mitsumegatoorunes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2BE50:60,31890:80,31990:80,31A10:20,31B10:20,3F4C0:10,3F5C0:10,3E990:80,2E910:40,2EA10:40,2EB10:40,2E9D0:40,2E020:B0,2EDD0:10,2E3D0:40,2B910:40
pause