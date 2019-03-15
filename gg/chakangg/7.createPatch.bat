@echo off
set T_FILENAME="TR_Chakan (U) [!].gg"
set S_FILENAME="Chakan (U) [!].gg"
set SCRIPTNAME="chakangg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
