@echo off
set T_FILENAME="TR_Golden Axe III (Japan).md"
set S_FILENAME="Golden Axe III (Japan).md"
set SCRIPTNAME="goldenaxeiiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
