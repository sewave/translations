@echo off
set T_FILENAME="TR_Tasac (Asia) (Ja) (Unl).nes"
set SCRIPTNAME="tasacnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 93D0:30,A3D0:30
pause
