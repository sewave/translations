@echo off
set T_FILENAME="TR_Super Thunder Blade (World).md"
set S_FILENAME="Super Thunder Blade (World).md"
set SCRIPTNAME="superthunderbladesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
