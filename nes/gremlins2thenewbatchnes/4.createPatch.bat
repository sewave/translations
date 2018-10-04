@echo off
set T_FILENAME="TR_Gremlins 2 - The New Batch (U) [!].nes"
set S_FILENAME="Gremlins 2 - The New Batch (U) [!].nes"
set SCRIPTNAME="gremlins2thenewbatchnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
