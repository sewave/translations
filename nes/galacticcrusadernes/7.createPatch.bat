@echo off
set T_FILENAME="TR_Galactic Crusader (Bunch) [!].nes"
set S_FILENAME="Galactic Crusader (Bunch) [!].nes"
set SCRIPTNAME="galacticcrusadernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
