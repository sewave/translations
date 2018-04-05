@echo off
set T_FILENAME="TR_3 Ninjas Kick Back (U).smc"
set S_FILENAME="3 Ninjas Kick Back (U).smc"
set SCRIPTNAME="3ninjaskickbacksnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
