@echo off
set T_FILENAME="TR_Alien 3 (USA).nes"
set SCRIPTNAME="alien3nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 39610:100,3C090:10,3C110:10,3C1D0:10,3C240:10,3C2B0:10,3C300:10,3C340:20
pause
