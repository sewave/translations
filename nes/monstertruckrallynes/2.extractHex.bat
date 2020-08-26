@echo off
set T_FILENAME="TR_Monster Truck Rally (USA).nes"
set SCRIPTNAME="monstertruckrallynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8C00:60,AC00:60,CC00:60,EC00:60,AFC0:10,9FC0:10,
pause
