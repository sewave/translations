@echo off
set T_FILENAME="TR_Balloon Fight (U) [!].nes"
set S_FILENAME="Balloon Fight (U) [!].nes"
set SCRIPTNAME="balloonfightnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
