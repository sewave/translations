@echo off
set T_FILENAME="TR_Jurassic Park (USA).nes"
set SCRIPTNAME="jurassicparknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
