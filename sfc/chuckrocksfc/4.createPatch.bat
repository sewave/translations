@echo off
set T_FILENAME="TR_Chuck Rock (U).smc"
set S_FILENAME="Chuck Rock (U).smc"
set SCRIPTNAME="chuckrocksfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
