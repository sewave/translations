@echo off
set T_FILENAME="TR_Seicross (U) [!].nes"
set SCRIPTNAME="seicrossnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9360:80,9500:100,8A30:40
pause
