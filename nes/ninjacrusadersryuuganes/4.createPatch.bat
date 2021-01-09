@echo off
set T_FILENAME="TR_Ninja Crusaders - Ryuuga (Japan).nes"
set S_FILENAME="Ninja Crusaders - Ryuuga (Japan).nes"
set SCRIPTNAME="ninjacrusadersryuuganes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
