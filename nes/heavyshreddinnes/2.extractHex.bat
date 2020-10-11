@echo off
set T_FILENAME="TR_Heavy Shreddin' (USA).nes"
set SCRIPTNAME="heavyshreddinnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20DB0:30,24020:50,241A0:60,24250:60,243D0:60,24DA0:140
pause
