@echo off
set T_FILENAME="TR_Castle of Dragon (U) [!].nes"
set S_FILENAME="Castle of Dragon (U) [!].nes"
set SCRIPTNAME="castleofdragonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
