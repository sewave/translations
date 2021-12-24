@echo off
set T_FILENAME="TR_Metroid (Japan) (v1.2) [T+ENG].fds"
set SCRIPTNAME="metroidfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 117C:60,172C:10,182C:10,1ABC:60,1BBC:60,5FCA:80,1EC:20,2EC:20,3EC:20,52C:10,C3C:100,10849:A0,B527:40,B747:C0,12341:80
pause
