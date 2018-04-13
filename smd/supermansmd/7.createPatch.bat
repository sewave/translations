@echo off
set T_FILENAME="TR_Superman (U) [!].gen"
set S_FILENAME="Superman (U) [!].gen"
set SCRIPTNAME="supermansmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
