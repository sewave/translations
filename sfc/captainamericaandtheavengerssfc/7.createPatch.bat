@echo off
set T_FILENAME="TR_Captain America and The Avengers (U).smc"
set S_FILENAME="Captain America and The Avengers (U).smc"
set SCRIPTNAME="captainamericaandtheavengerssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
