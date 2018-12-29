@echo off
set T_FILENAME="TR_Blues Brothers, The (U) [!].nes"
set S_FILENAME="Blues Brothers, The (U) [!].nes"
set SCRIPTNAME="bluesbrothersthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
