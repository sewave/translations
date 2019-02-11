@echo off
set T_FILENAME="TR_Micro Machines (Camerica) [!].nes"
set S_FILENAME="Micro Machines (Camerica) [!].nes"
set SCRIPTNAME="micromachinesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
