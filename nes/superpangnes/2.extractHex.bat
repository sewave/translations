@echo off
set T_FILENAME="TR_Super Pang (Asia) (Ja) (PAL) (Unl).nes"
set SCRIPTNAME="superpangnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B0E0:20,C0E0:20,D0E0:20,E0E0:20,F0E0:20,AF30:30,AA30:10,AA70:10,8F60:60
pause
