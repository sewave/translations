@echo off
set T_FILENAME="TR_Rocketeer, The (USA).nes"
set SCRIPTNAME="rocketeerthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4161:20
pause
