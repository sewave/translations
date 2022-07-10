@echo off
set T_FILENAME="TR_Dezaemon (Japan) [T+ENG].nes"
set SCRIPTNAME="dezaemonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2C0:50,710:60,C10:180,65D0:30,1410:80,1510:80,1740:40,52C0:50,53B0:40,54B0:80,55B0:80,1780:40
pause
