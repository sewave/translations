@echo off
set T_FILENAME="TR_Super Off Road (U) [!].smc"
set S_FILENAME="Super Off Road (U) [!].smc"
set SCRIPTNAME="superoffroadsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
