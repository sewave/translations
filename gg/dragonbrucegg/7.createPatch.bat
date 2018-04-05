@echo off
set T_FILENAME="TR_Dragon - The Bruce Lee Story (U) [!].gg"
set S_FILENAME="Dragon - The Bruce Lee Story (U) [!].gg"
set SCRIPTNAME="dragonbrucegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
