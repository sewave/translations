@echo off
set T_FILENAME="TR_Seicross (U) [!].nes"
set S_FILENAME="Seicross (U) [!].nes"
set SCRIPTNAME="seicrossnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
