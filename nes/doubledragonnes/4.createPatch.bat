@echo off
set T_FILENAME="TR_Double Dragon (U) [!].nes"
set S_FILENAME="Double Dragon (U) [!].nes"
set SCRIPTNAME="doubledragonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
