@echo off
set T_FILENAME="TR_Donkey Kong (U) (PRG1) [!].nes"
set S_FILENAME="Donkey Kong (U) (PRG1) [!].nes"
set SCRIPTNAME="donkeykongnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
