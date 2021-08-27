@echo off
set T_FILENAME="TR_Hit Marmot (Asia) (Unl).nes"
set SCRIPTNAME="hitmarmotnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2D10:30,15230:30,5E90:50,DE90:50,1AE90:50
pause
