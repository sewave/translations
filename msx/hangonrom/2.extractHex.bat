@echo off
set T_FILENAME="TR_Hang On (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="hangonrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6F3D:20,6F6D:8,7025:80
pause
