@echo off
set T_FILENAME="TR_Gradius (U) [!].nes"
set S_FILENAME="Gradius (U) [!].nes"
set SCRIPTNAME="gradiusnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
