@echo off
set T_FILENAME="TR_Kung Fu (U) [!].nes"
set S_FILENAME="Kung Fu (U) [!].nes"
set SCRIPTNAME="kungfunes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
