@echo off
set T_FILENAME="TR_Day Dreamin' Davey (USA).nes"
set SCRIPTNAME="daydreamindaveynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 42C90:80,42F90:80
pause
