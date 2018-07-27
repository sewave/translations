@echo off
set T_FILENAME="TR_Sqoon (U) [!].nes"
set S_FILENAME="Sqoon (U) [!].nes"
set SCRIPTNAME="sqoonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
