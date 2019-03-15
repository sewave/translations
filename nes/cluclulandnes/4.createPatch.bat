@echo off
set T_FILENAME="TR_Clu Clu Land (W) [!].nes"
set S_FILENAME="Clu Clu Land (W) [!].nes"
set SCRIPTNAME="cluclulandnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
