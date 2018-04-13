@echo off
set T_FILENAME="TR_Superman (U) [!].gg"
set S_FILENAME="Superman (U) [!].gg"
set SCRIPTNAME="supermangg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
