@echo off
set T_FILENAME="TR_Blues Brothers, The (U) [!].smc"
set S_FILENAME="Blues Brothers, The (U) [!].smc"
set SCRIPTNAME="bluesbrothersthesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
