@echo off
set T_FILENAME="TR_Baby Boomer (Color Dreams) [!].nes"
set S_FILENAME="Baby Boomer (Color Dreams) [!].nes"
set SCRIPTNAME="babyboomernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
