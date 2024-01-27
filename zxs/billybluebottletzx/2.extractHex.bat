@echo off
set T_FILENAME="TR_Billy BlueBottle.tzx"
set SCRIPTNAME="billybluebottletzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6B9A:18,6CDA:20,6D5A:100,6F1A:A0,2FA2:28,39F2:8,3A3A:8,3EAA:30,50DB:10
pause
