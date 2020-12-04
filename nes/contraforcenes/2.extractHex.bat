@echo off
set T_FILENAME="TR_Contra Force (USA).nes"
set SCRIPTNAME="contraforcenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3F2F0:10,3F2C0:10,3F280:10,3F1C0:10,3F0F0:20,3FFE0:10,24DB0:20,200C0:40,20910:10,209D0:10,20CF0:10
pause
