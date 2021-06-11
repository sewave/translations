@echo off
set T_FILENAME="TR_Space Hunter (Japan) [T+ENG].nes"
set SCRIPTNAME="spacehunternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BA10:400,BF10:100
pause
