@echo off
set T_FILENAME="TR_Antarctic Adventure (J) [!].nes"
set SCRIPTNAME="antarcticadventurenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50D0:40,4410-4610
pause
