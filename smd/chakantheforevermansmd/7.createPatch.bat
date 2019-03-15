@echo off
set T_FILENAME="TR_Chakan - The Forever Man (UE) [!].gen"
set S_FILENAME="Chakan - The Forever Man (UE) [!].gen"
set SCRIPTNAME="chakantheforevermansmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
