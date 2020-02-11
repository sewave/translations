@echo off
set T_FILENAME="TR_Flappy (Japan).nes"
set SCRIPTNAME="flappynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9A70:20,97F0:20,93F0:20,9070:40,91C0:40
pause
