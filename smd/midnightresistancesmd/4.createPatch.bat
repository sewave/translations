@echo off
set T_FILENAME="TR_Midnight Resistance (U) [!].gen"
set S_FILENAME="Midnight Resistance (U) [!].gen"
set SCRIPTNAME="midnightresistancesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
