@echo off
set T_FILENAME="TR_Shockman (USA).pce"
set SCRIPTNAME="shockmanpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 40A2A:80,409B6:10,40A9A:8
pause
