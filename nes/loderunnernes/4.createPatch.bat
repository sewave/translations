@echo off
set T_FILENAME="TR_Lode Runner (U) [!].nes"
set S_FILENAME="Lode Runner (U) [!].nes"
set SCRIPTNAME="loderunnernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
