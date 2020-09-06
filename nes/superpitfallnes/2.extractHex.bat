@echo off
set T_FILENAME="TR_Super Pitfall (USA).nes"
set SCRIPTNAME="superpitfallnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8E50:20,AE50:20,1AE50:20
pause
