@echo off
set T_FILENAME="TR_Slalom (U) [!].nes"
set S_FILENAME="Slalom (U) [!].nes"
set SCRIPTNAME="slalomnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
