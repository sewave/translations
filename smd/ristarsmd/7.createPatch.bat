@echo off
set T_FILENAME="TR_Ristar (UE) [!].gen"
set S_FILENAME="Ristar (UE) [!].gen"
set SCRIPTNAME="ristarsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
