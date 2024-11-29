@echo off
set T_FILENAME="TR_Kabuki - Quantum Fighter (USA).nes"
set SCRIPTNAME="kabukiquantumfighternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E290:300,3F160:20,3FDD0:240,3D6F0:10,3EA80:60,222D0:20,3ECB0:80,3ED90:40
pause
