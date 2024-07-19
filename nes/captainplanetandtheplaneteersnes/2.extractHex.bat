@echo off
set T_FILENAME="TR_Captain Planet and the Planeteers (USA).nes"
set SCRIPTNAME="captainplanetandtheplaneteersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E3F0:40,3E040:10,3E2B0:20,3E500:10,3CC20:2A0,3A790:80,303A0:A0,3A3F0:200
pause
