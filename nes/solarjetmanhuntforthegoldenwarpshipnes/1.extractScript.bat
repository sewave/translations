@echo off
set T_FILENAME="Solar Jetman - Hunt for the Golden Warpship (USA).nes"
set SCRIPTNAME="solarjetmanhuntforthegoldenwarpshipnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
