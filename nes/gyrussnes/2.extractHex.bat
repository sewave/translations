@echo off
set T_FILENAME="TR_Gyruss (USA).nes"
set SCRIPTNAME="gyrussnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9FD0:30,9310:10,BC50:C0,9110:100,B110:100,D110:80,F110:80,9220:10,9100:10,B100:10,D100:10,F100:10,
pause
