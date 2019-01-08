@echo off
set T_FILENAME="TR_Super James Pond (U).smc"
set S_FILENAME="Super James Pond (U).smc"
set SCRIPTNAME="superjamespondsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
