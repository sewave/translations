@echo off
set T_FILENAME="TR_Shooting Range (USA).nes"
set SCRIPTNAME="shootingrangenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9C10:100,B0F0:10,B140:20,B180:10,EAA0:90,9D90:10
pause
