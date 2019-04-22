@echo off
set T_FILENAME="TR_Air Fortress (U) [!].nes"
set S_FILENAME="Air Fortress (U) [!].nes"
set SCRIPTNAME="airfortressnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
