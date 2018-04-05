@echo off
set T_FILENAME="TR_3 Ninjas Kick Back (U).smc"
set SCRIPTNAME="3ninjaskickbacksnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
