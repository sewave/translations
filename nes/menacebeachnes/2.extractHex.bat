@echo off
set T_FILENAME="TR_Menace Beach (USA) (Unl).nes"
set SCRIPTNAME="menacebeachnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 12280:10,122E0:10,12400:10,12580:20,16580:20,1E280:10,1E2E0:10,1E400:10,1E580:20,
pause
