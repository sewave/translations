@echo off
set T_FILENAME="TR_Zombie Hunter (Japan) [T+ENG].nes"
set SCRIPTNAME="zombiehunternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 275C0:180,26310:80
pause
