@echo off
set T_FILENAME="TR_Battle Tank (U) [!].nes"
set S_FILENAME="Battle Tank (U) [!].nes"
set SCRIPTNAME="battletanknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
