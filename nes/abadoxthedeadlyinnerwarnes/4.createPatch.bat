@echo off
set T_FILENAME="TR_Abadox - The Deadly Inner War (U) [!].nes"
set S_FILENAME="Abadox - The Deadly Inner War (U) [!].nes"
set SCRIPTNAME="abadoxthedeadlyinnerwarnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
