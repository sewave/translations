@echo off
set T_FILENAME="TR_Solar Jetman - Hunt for the Golden Warpship (USA).nes"
set SCRIPTNAME="solarjetmanhuntforthegoldenwarpshipnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
