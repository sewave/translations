@echo off
set T_FILENAME="TR_Nuts & Milk (Japan).nes"
set S_FILENAME="Nuts & Milk (Japan).nes"
set SCRIPTNAME="nutsmilknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
