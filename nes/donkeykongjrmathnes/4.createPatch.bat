@echo off
set T_FILENAME="TR_Donkey Kong Jr. Math (U) [!].nes"
set S_FILENAME="Donkey Kong Jr. Math (U) [!].nes"
set SCRIPTNAME="donkeykongjrmathnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
