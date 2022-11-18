@echo off
set T_FILENAME="TR_Hell Fighter (Asia) (PAL) (Unl).nes"
set SCRIPTNAME="hellfighternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 40F10:60,4F3D0:30
pause
