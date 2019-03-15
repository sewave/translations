@echo off
set T_FILENAME="TR_Donkey Kong Jr. (JU) (PRG1) [!].nes"
set S_FILENAME="Donkey Kong Jr. (JU) (PRG1) [!].nes"
set SCRIPTNAME="donkeykongjrnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
