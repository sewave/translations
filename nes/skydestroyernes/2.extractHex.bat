@echo off
set T_FILENAME="TR_Sky Destroyer (J) [!].nes"
set SCRIPTNAME="skydestroyernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 55DF:70
pause
