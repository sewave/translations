@echo off
set T_FILENAME="TR_Mr. Do's Wild Ride (Japan).rom"
set SCRIPTNAME="mrdoswildriderom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 33FF:20,33D7:10,368A:8
pause
