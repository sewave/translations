@echo off
set T_FILENAME="TR_Monstruo de los globos, El (Spain) (Rev 1) (Gluk Video) (Unl).nes"
set SCRIPTNAME="monstruodelosgloboselrev1nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9A10:20,8F10:50
pause
