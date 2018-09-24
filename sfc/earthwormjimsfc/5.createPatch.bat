@echo off
set T_FILENAME="TR_Earthworm Jim (U) [!].smc"
set S_FILENAME="Earthworm Jim (U) [!].smc"
set SCRIPTNAME="earthwormjimsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
