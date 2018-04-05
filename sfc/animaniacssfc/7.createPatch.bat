@echo off
set T_FILENAME="TR_Animaniacs (U) [!].smc"
set S_FILENAME="Animaniacs (U) [!].smc"
set SCRIPTNAME="animaniacssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
