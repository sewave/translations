@echo off
set T_FILENAME="TR_Joust (U) [!].nes"
set S_FILENAME="Joust (U) [!].nes"
set SCRIPTNAME="joustnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
