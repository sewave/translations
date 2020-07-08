@echo off
set T_FILENAME="TR_Super Pang II (Asia) (Ja) (Unl).nes"
set SCRIPTNAME="superpangiines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11650:10,115F0:10,16F40:20,11590:10
pause
