@echo off
set T_FILENAME="TR_Dragon Crystal (U) [!].gg"
set S_FILENAME="Dragon Crystal (U) [!].gg"
set SCRIPTNAME="dragoncrystalgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
