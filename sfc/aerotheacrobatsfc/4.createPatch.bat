@echo off
set T_FILENAME="TR_Aero the Acro-Bat (U) [!].smc"
set S_FILENAME="Aero the Acro-Bat (U) [!].smc"
set SCRIPTNAME="aerotheacrobatsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
