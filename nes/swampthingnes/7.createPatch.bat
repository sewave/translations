@echo off
set T_FILENAME="TR_Swamp Thing (U) [!].nes"
set S_FILENAME="Swamp Thing (U) [!].nes"
set SCRIPTNAME="swampthingnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
