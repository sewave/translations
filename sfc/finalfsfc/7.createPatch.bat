@echo off
set T_FILENAME="TR_Final Fight (U).smc"
set S_FILENAME="Final Fight (U).smc"
set SCRIPTNAME="finalfsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
