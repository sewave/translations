@echo off
set T_FILENAME="TR_Banana (Japan).nes"
set SCRIPTNAME="banananes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 83D0:40,93D0:40,A3D0:40,ACD0:40,AD50:40,AF10:100
pause
