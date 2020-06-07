@echo off
set T_FILENAME="TR_Raid 2020 (Color Dreams) [!].nes"
set S_FILENAME="Raid 2020 (Color Dreams) [!].nes"
set SCRIPTNAME="raid2020nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
