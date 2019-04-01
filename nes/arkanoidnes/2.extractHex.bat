@echo off
set T_FILENAME="TR_Arkanoid (U) [!].nes"
set SCRIPTNAME="arkanoidnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9B80:60,8C30:100,AC30:100,9010:300,B010:200
pause
