@echo off
set T_FILENAME="TR_Flight of the Intruder (USA).nes"
set SCRIPTNAME="flightoftheintrudernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 148D0:30,1B3F0:80,472C:180,A050:10,14A80:20
pause
