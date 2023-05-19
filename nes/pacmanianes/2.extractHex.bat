@echo off
set T_FILENAME="TR_Pac-Mania (USA) (Unl).nes"
set SCRIPTNAME="pacmanianes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14310:10,17A10:10,161C0:10,16340:60,110B0:10,11170:60,15150:90
pause
