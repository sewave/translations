@echo off
set T_FILENAME="TR_Gremlins 2 - The New Batch (W) [!].gb"
set S_FILENAME="Gremlins 2 - The New Batch (W) [!].gb"
set SCRIPTNAME="gremlins2thenewbatchgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
