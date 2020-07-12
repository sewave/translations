@echo off
set T_FILENAME="TR_Super 3D Noah's Ark (USA) (Unl).sfc"
set SCRIPTNAME="super3dnoahsarksfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 99A88:C0,99E88:80,988C8:360
pause
