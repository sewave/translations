@echo off
set T_FILENAME="TR_Wolf Child (U) [!].smc"
set S_FILENAME="Wolf Child (U) [!].smc"
set SCRIPTNAME="wolfchildsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
