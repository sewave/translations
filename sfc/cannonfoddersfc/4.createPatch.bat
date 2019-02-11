@echo off
set T_FILENAME="TR_Cannon Fodder (E).smc"
set S_FILENAME="Cannon Fodder (E).smc"
set SCRIPTNAME="cannonfoddersfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
