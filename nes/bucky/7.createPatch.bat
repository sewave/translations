@echo off
set T_FILENAME="Bucky O'Hare (U) [T+ESP].nes"
set S_FILENAME="Bucky O'Hare (U) [!].nes"
set SCRIPTNAME="bucky"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
