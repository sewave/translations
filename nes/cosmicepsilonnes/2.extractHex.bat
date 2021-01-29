@echo off
set T_FILENAME="TR_Cosmic Epsilon (Japan).nes"
set SCRIPTNAME="cosmicepsilonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 33B40:120,33F20:80,21580:20,28490:80,215B0:10,21610:10,20860:10,20E30:30
pause
