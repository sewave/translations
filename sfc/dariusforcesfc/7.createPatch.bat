@echo off
set T_FILENAME="TR_Darius Force (J).smc"
set S_FILENAME="Darius Force (J).smc"
set SCRIPTNAME="dariusforcesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
