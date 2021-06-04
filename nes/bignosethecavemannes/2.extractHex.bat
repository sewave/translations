@echo off
set T_FILENAME="TR_Big Nose the Caveman (USA) (Unl).nes"
set SCRIPTNAME="bignosethecavemannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
