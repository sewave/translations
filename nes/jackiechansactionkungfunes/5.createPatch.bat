@echo off
set T_FILENAME="TR_Jackie Chan's Action Kung Fu (U) [!].nes"
set S_FILENAME="Jackie Chan's Action Kung Fu (U) [!].nes"
set SCRIPTNAME="jackiechansactionkungfunes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
