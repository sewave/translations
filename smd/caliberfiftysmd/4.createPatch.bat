@echo off
set T_FILENAME="TR_Caliber Fifty (U) [!].bin"
set S_FILENAME="Caliber Fifty (U) [!].bin"
set SCRIPTNAME="caliberfiftysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
