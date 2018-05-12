@echo off
set T_FILENAME="TR_Clay Fighter - Tournament Edition (U).smc"
set S_FILENAME="Clay Fighter - Tournament Edition (U).smc"
set SCRIPTNAME="clayfsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
