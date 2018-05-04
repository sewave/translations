@echo off
set T_FILENAME="TR_Blades of Vengeance (UE) [!].gen"
set S_FILENAME="Blades of Vengeance (UE) [!].gen"
set SCRIPTNAME="bladesofvengeancesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
