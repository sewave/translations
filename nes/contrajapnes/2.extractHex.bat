@echo off
set T_FILENAME="TR_Contra (Japan) [T+ENG].nes"
set SCRIPTNAME="contrajapnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 30F80:30,3EB70:80,3E060:10,3E160:10,3E250:20,3E350:20,20280:20,20330:50
pause
