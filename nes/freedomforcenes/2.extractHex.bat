@echo off
set T_FILENAME="TR_Freedom Force (USA).nes"
set SCRIPTNAME="freedomforcenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F770:30,2F870:30,2F870:30,2F970:60,2FA70:30,2FB70:30,2FC70:30,2FD70:30,2FE70:30,2F8C0:10,2F3C0:10,31410:50,31510:40,
pause
