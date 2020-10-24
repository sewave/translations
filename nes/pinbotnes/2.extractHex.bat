@echo off
set T_FILENAME="TR_Pin Bot (USA).nes"
set SCRIPTNAME="pinbotnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 235A0:60
pause
