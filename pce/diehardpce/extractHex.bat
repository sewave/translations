@echo off 
set T_FILENAME="TR_Die Hard (Japan) [T+ENG].pce"
set SCRIPTNAME="diehardpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
