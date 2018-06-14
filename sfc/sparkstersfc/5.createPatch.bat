@echo off
set T_FILENAME="TR_Sparkster (U).smc"
set S_FILENAME="Sparkster (U).smc"
set SCRIPTNAME="sparkstersfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
