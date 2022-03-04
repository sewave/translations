@echo off
set T_FILENAME="TR_Aliens - Alien 2 (Japan) (Proto) [b].fds"
set SCRIPTNAME="aliensalien2fds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 140E:100,3832:80,10E78:30,10F08:A0,11789:30,11819:A0,1209A:30,1212A:A0,12B9A:A0,13D9E:20,13FBF:A0
pause
