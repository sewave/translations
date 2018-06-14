@echo off
set T_FILENAME="TR_Flicky (UE) [!].gen"
set S_FILENAME="Flicky (UE) [!].gen"
set SCRIPTNAME="flickysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
