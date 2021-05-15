@echo off
set T_FILENAME="TR_amazon_diet_EN.nes"
set S_FILENAME="amazon_diet_EN.nes"
set SCRIPTNAME="amazondietennes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
