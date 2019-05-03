@echo off
set T_FILENAME="TR_Dragon Spirit - The New Legend (U) [!].nes"
set S_FILENAME="Dragon Spirit - The New Legend (U) [!].nes"
set SCRIPTNAME="dragonspiritthenewlegendnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
