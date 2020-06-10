@echo off
set T_FILENAME="TR_SolarStriker (W) [!].gb"
set SCRIPTNAME="solarstrikergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8940:60
pause
