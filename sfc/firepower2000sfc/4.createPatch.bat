@echo off
set T_FILENAME="TR_Firepower 2000 (U).smc"
set S_FILENAME="Firepower 2000 (U).smc"
set SCRIPTNAME="firepower2000sfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
