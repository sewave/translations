@echo off
set T_FILENAME="TR_Ms. Pac-Man (U) [!].nes"
set SCRIPTNAME="mspacmannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8CE0:30,8DE0:30,8FC0:40,9A10:100
pause
