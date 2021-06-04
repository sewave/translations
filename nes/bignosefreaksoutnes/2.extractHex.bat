@echo off
set T_FILENAME="TR_Big Nose Freaks Out (USA) (Unl).nes"
set SCRIPTNAME="bignosefreaksoutnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
