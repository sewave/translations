@echo off
set T_FILENAME="TR_Solar Jetman - Hunt for the Golden Warpship (USA).nes"
set S_FILENAME="Solar Jetman - Hunt for the Golden Warpship (USA).nes"
set SCRIPTNAME="solarjetmanhuntforthegoldenwarpshipnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
