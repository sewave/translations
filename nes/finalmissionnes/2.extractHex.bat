@echo off
set T_FILENAME="TR_Final Mission (Japan) [T+ENG].nes"
set SCRIPTNAME="finalmissionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 40710:100
pause
