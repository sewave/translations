@echo off
set T_FILENAME="TR_Tinhead (U) [!].gen"
set S_FILENAME="Tinhead (U) [!].gen"
set SCRIPTNAME="tinheadssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
