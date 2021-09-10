@echo off
set T_FILENAME="TR_Bionic Commando (USA).nes"
set SCRIPTNAME="bioniccommandones"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1CE70:30,2FA60:1B0,1E390:80,1E170:30,2FD10:200
pause
