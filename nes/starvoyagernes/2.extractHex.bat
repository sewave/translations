@echo off
set T_FILENAME="TR_Star Voyager (USA).nes"
set SCRIPTNAME="starvoyagernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8A10:20,CE80:90,AE80:90
pause
