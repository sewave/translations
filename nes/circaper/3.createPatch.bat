@echo off
set T_FILENAME="Circus Caper (U) [T+ESP].nes"
set S_FILENAME="Circus Caper (U) [!].nes"
set SCRIPTNAME="circaper"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
