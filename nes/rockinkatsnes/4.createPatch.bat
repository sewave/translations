@echo off
set T_FILENAME="TR_Rockin' Kats (U) [!].nes"
set S_FILENAME="Rockin' Kats (U) [!].nes"
set SCRIPTNAME="rockinkatsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
