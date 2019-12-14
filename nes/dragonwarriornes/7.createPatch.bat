@echo off
set T_FILENAME="TR_Dragon Warrior (U) (PRG1) [!].nes"
set S_FILENAME="Dragon Warrior (U) (PRG1) [!].nes"
set SCRIPTNAME="dragonwarriornes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
