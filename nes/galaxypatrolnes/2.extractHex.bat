@echo off
set T_FILENAME="TR_galaxy_patrol.nes"
set SCRIPTNAME="galaxypatrolnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4610:160,4F40:10
pause
