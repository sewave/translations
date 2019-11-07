@echo off
set T_FILENAME="TR_Monstruo de los globos, El (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="monstruodelosgloboselnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8F10:50,9A10:20,9AC0:300
pause
