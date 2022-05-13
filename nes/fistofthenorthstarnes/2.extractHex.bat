@echo off
set T_FILENAME="TR_Fist of the North Star (USA).nes"
set SCRIPTNAME="fistofthenorthstarnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 18310:300,17300:10
pause
