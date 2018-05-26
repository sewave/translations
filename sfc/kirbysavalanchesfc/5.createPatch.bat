@echo off
set T_FILENAME="TR_Kirby's Avalanche (U) [!].smc"
set S_FILENAME="Kirby's Avalanche (U) [!].smc"
set SCRIPTNAME="kirbysavalanchesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
