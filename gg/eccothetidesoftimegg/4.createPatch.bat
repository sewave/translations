@echo off
set T_FILENAME="TR_Ecco - The Tides of Time (U) [!].gg"
set S_FILENAME="Ecco - The Tides of Time (U) [!].gg"
set SCRIPTNAME="eccothetidesoftimegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
