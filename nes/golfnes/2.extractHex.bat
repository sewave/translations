@echo off
set T_FILENAME="TR_Golf (USA).nes"
set SCRIPTNAME="golfnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5240:10
pause
