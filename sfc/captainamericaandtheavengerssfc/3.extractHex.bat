@echo off
set T_FILENAME="TR_Captain America and The Avengers (U).smc"
set SCRIPTNAME="captainamericaandtheavengerssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
