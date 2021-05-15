@echo off
set T_FILENAME="TR_Shufflepuck Cafe (Japan) [T+ENG].nes"
set SCRIPTNAME="shufflepuckcafenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 
pause
