@echo off
set T_FILENAME="TR_Sparkster (U) [!].gen"
set S_FILENAME="Sparkster (U) [!].gen"
set SCRIPTNAME="sparkstersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
