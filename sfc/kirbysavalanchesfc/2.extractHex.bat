@echo off
set T_FILENAME="TR_Kirby's Avalanche (U) [!].smc"
set SCRIPTNAME="kirbysavalanchesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
