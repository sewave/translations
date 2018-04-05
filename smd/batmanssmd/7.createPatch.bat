@echo off
set T_FILENAME="TR_Batman (U) [!].gen"
set S_FILENAME="Batman (U) [!].gen"
set SCRIPTNAME="batmanssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
