@echo off
set T_FILENAME="TR_Warlock (UE) [!].gen"
set S_FILENAME="Warlock (UE) [!].gen"
set SCRIPTNAME="warlocksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
