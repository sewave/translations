@echo off
set T_FILENAME="TR_Wally Bear and the No! Gang (USA) (Unl).nes"
set SCRIPTNAME="wallybearandthenogangnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
